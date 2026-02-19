#!/usr/bin/env bash
set -euo pipefail

# ── ANSI helpers ────────────────────────────────────────────────
RST=$'\e[0m' BLD=$'\e[1m' DIM=$'\e[2m'
RED=$'\e[31m' GRN=$'\e[32m' YLW=$'\e[33m' CYN=$'\e[36m'
info()  { echo "${CYN}info${RST}  $*" >&2; }
ok()    { echo "${GRN}ok${RST}    $*" >&2; }
warn()  { echo "${YLW}warn${RST}  $*" >&2; }
err()   { echo "${RED}error${RST} $*" >&2; }

# ── Runtime state directory ─────────────────────────────────────
RUNTIME_DIR="${DESKTOP_BRIDGE_DIR:-${TMPDIR:-/tmp}/desktop-bridge}"

all_running=true

for name in rclone cloudflared; do
  pidfile="$RUNTIME_DIR/$name.pid"
  if [[ -f "$pidfile" ]] && kill -0 "$(cat "$pidfile")" 2>/dev/null; then
    ok "$name: running (PID $(cat "$pidfile"))"
  else
    warn "$name: not running"
    all_running=false
    rm -f "$pidfile" 2>/dev/null || true
  fi
done

if [[ "$all_running" == true ]]; then
  # Read saved state
  TUNNEL_URL="" USERNAME="" PASSWORD=""
  [[ -f "$RUNTIME_DIR/tunnel-url" ]] && TUNNEL_URL=$(cat "$RUNTIME_DIR/tunnel-url")
  [[ -f "$RUNTIME_DIR/username" ]]   && USERNAME=$(cat "$RUNTIME_DIR/username")
  [[ -f "$RUNTIME_DIR/password" ]]   && PASSWORD=$(cat "$RUNTIME_DIR/password")

  if [[ -n "$TUNNEL_URL" && -n "$USERNAME" && -n "$PASSWORD" ]]; then
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
    # Machine-readable on stdout
    echo "$TUNNEL_URL"
  fi
else
  cat >&2 <<EOF

  Bridge is not fully running.
  Start it with: ${BLD}bash {baseDir}/scripts/start.sh --path <dir> --read-only${RST}

EOF
fi
