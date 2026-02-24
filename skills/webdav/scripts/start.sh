#!/usr/bin/env bash
set -euo pipefail

# ── ANSI helpers ────────────────────────────────────────────────
RST=$'\e[0m' BLD=$'\e[1m' DIM=$'\e[2m'
RED=$'\e[31m' GRN=$'\e[32m' YLW=$'\e[33m' CYN=$'\e[36m'
info()  { echo "${CYN}info${RST}  $*" >&2; }
ok()    { echo "${GRN}ok${RST}    $*" >&2; }
warn()  { echo "${YLW}warn${RST}  $*" >&2; }
err()   { echo "${RED}error${RST} $*" >&2; }

# ── Runtime state directory (never writes inside the skill dir) ─
RUNTIME_DIR="${DESKTOP_BRIDGE_DIR:-${TMPDIR:-/tmp}/desktop-bridge}"
mkdir -p "$RUNTIME_DIR"

# ── Defaults ────────────────────────────────────────────────────
WORKSPACE=""
PORT=8080
USERNAME="bridge"
PASSWORD=""
READ_ONLY=false

# ── Argument parsing ───────────────────────────────────────────
usage() {
  cat >&2 <<EOF
Usage: start.sh [OPTIONS] [PATH]

Options:
  --path <dir>     Directory to serve (default: \$HOME)
  --port <n>       Local WebDAV port (default: 8080)
  --user <name>    WebDAV username (default: bridge)
  --pass <secret>  WebDAV password (default: auto-generated)
  --read-only      Mount as read-only
  -h, --help       Show this help

The first positional argument is treated as --path for backward compatibility.
EOF
  exit 0
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --path)       WORKSPACE="$2"; shift 2 ;;
    --port)       PORT="$2"; shift 2 ;;
    --user)       USERNAME="$2"; shift 2 ;;
    --pass)       PASSWORD="$2"; shift 2 ;;
    --read-only)  READ_ONLY=true; shift ;;
    -h|--help)    usage ;;
    -*)           err "Unknown option: $1"; usage ;;
    *)            # backward compat: first positional arg = --path
                  if [[ -z "$WORKSPACE" ]]; then
                    WORKSPACE="$1"
                  else
                    err "Unexpected argument: $1"; exit 1
                  fi
                  shift ;;
  esac
done

WORKSPACE="${WORKSPACE:-$HOME}"

# ── Already running? ───────────────────────────────────────────
if [[ -f "$RUNTIME_DIR/rclone.pid" ]]; then
  pid=$(cat "$RUNTIME_DIR/rclone.pid")
  if kill -0 "$pid" 2>/dev/null; then
    info "Bridge is already running (rclone PID $pid)."
    if [[ -f "$RUNTIME_DIR/tunnel-url" ]]; then
      url=$(cat "$RUNTIME_DIR/tunnel-url")
      echo "$url"          # machine-readable on stdout
      info "Tunnel URL: $url"
    fi
    exit 0
  fi
  # stale PID file — clean up and continue
  rm -f "$RUNTIME_DIR/rclone.pid"
fi

# ── Dependency check ──────────────────────────────────────────
for bin in rclone cloudflared; do
  if ! command -v "$bin" &>/dev/null; then
    err "$bin is not installed."
    exit 1
  fi
done

# ── Workspace validation ──────────────────────────────────────
WORKSPACE="$(cd "$WORKSPACE" 2>/dev/null && pwd)" || {
  err "Directory does not exist: ${WORKSPACE}"
  exit 1
}
info "Serving: $WORKSPACE"

# ── Port availability check ───────────────────────────────────
port_in_use=false
if command -v lsof &>/dev/null; then
  lsof -iTCP:"$PORT" -sTCP:LISTEN -P -n &>/dev/null && port_in_use=true
elif command -v ss &>/dev/null; then
  ss -tlnH "sport = :$PORT" 2>/dev/null | grep -q . && port_in_use=true
fi
if [[ "$port_in_use" == true ]]; then
  err "Port $PORT is already in use."
  info "Try: --port $((PORT + 1))"
  exit 1
fi

# ── Credentials ───────────────────────────────────────────────
if [[ -z "$PASSWORD" ]]; then
  PASSWORD="$(openssl rand -base64 18 | tr -d '=/+' | head -c 24)"
fi

# ── Start rclone ──────────────────────────────────────────────
info "Starting WebDAV server..."

rclone_args=(
  serve webdav "$WORKSPACE"
  --addr "127.0.0.1:$PORT"
  --user "$USERNAME"
  --pass "$PASSWORD"
  --vfs-cache-mode full
  --dir-cache-time 5m0s
  --config ""
)
if [[ "$READ_ONLY" == true ]]; then
  rclone_args+=(--read-only)
fi

rclone "${rclone_args[@]}" 2>"$RUNTIME_DIR/rclone.log" &
RCLONE_PID=$!

# Poll rclone log for "Serving on" (up to 10 s)
ready=false
for _ in $(seq 1 10); do
  if ! kill -0 "$RCLONE_PID" 2>/dev/null; then
    err "rclone crashed during startup. Log:"
    cat "$RUNTIME_DIR/rclone.log" >&2
    exit 1
  fi
  if grep -qE "(Serving on|Server started on)" "$RUNTIME_DIR/rclone.log" 2>/dev/null; then
    ready=true
    break
  fi
  sleep 1
done

if [[ "$ready" != true ]]; then
  err "Timed out waiting for rclone to start (10 s)."
  kill "$RCLONE_PID" 2>/dev/null || true
  cat "$RUNTIME_DIR/rclone.log" >&2
  exit 1
fi

ok "WebDAV server running on 127.0.0.1:$PORT"

# ── Start cloudflared ─────────────────────────────────────────
info "Starting Cloudflare tunnel..."

cloudflared tunnel --no-autoupdate --url "http://127.0.0.1:$PORT" \
  2>"$RUNTIME_DIR/cloudflared.log" &
CF_PID=$!

# Poll cloudflared log for tunnel URL (up to 30 s)
TUNNEL_URL=""
for _ in $(seq 1 30); do
  if ! kill -0 "$CF_PID" 2>/dev/null; then
    err "cloudflared crashed during startup. Log:"
    cat "$RUNTIME_DIR/cloudflared.log" >&2
    # clean up rclone
    kill "$RCLONE_PID" 2>/dev/null || true
    rm -f "$RUNTIME_DIR/rclone.pid"
    exit 1
  fi
  TUNNEL_URL=$(grep -oE 'https://[a-zA-Z0-9-]+\.trycloudflare\.com' \
    "$RUNTIME_DIR/cloudflared.log" 2>/dev/null || true)
  if [[ -n "$TUNNEL_URL" ]]; then
    break
  fi
  sleep 1
done

if [[ -z "$TUNNEL_URL" ]]; then
  err "Timed out waiting for tunnel URL (30 s)."
  kill "$RCLONE_PID" "$CF_PID" 2>/dev/null || true
  exit 1
fi

ok "Tunnel established"

# ── Save state ────────────────────────────────────────────────
echo "$RCLONE_PID"  > "$RUNTIME_DIR/rclone.pid"
echo "$CF_PID"      > "$RUNTIME_DIR/cloudflared.pid"
echo "$TUNNEL_URL"  > "$RUNTIME_DIR/tunnel-url"
echo "$USERNAME"    > "$RUNTIME_DIR/username"
echo "$PASSWORD"    > "$RUNTIME_DIR/password"
echo "$WORKSPACE"   > "$RUNTIME_DIR/workspace"
echo "$PORT"        > "$RUNTIME_DIR/port"

# ── Connection instructions (stderr) ─────────────────────────
HOST="${TUNNEL_URL#https://}"
cat >&2 <<EOF

${GRN}${BLD}  Bridge is live!${RST}

  ${BLD}URL:${RST}       ${CYN}${TUNNEL_URL}${RST}
  ${BLD}Username:${RST}  ${USERNAME}
  ${BLD}Password:${RST}  ${PASSWORD}

${DIM}  ─────────────────────────────────────────────────${RST}

  ${BLD}Connect from any device:${RST}

  ${BLD}macOS Finder${RST}     Cmd+K → ${TUNNEL_URL}
  ${BLD}Windows${RST}          Map Network Drive → ${TUNNEL_URL}
  ${BLD}Linux (GNOME)${RST}    Files → Other Locations → davs://${HOST}
  ${BLD}Linux (KDE)${RST}      Dolphin → webdavs://${HOST}
  ${BLD}iOS Files${RST}        Connect to Server → ${TUNNEL_URL}
  ${BLD}Android${RST}          CX File Explorer → Remote → WebDAV
                   Host: ${HOST} | Port: 443 | HTTPS
  ${BLD}Obsidian${RST}         Remotely Save plugin → WebDAV → ${TUNNEL_URL}

  ${DIM}Enter username and password when prompted.${RST}
  ${DIM}Note: 100 MB max file size (Cloudflare free tier limit).${RST}

EOF

# ── Machine-readable output (stdout) ─────────────────────────
echo "$TUNNEL_URL"
