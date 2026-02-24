#!/usr/bin/env bash
set -euo pipefail

# ── ANSI helpers ────────────────────────────────────────────────
RST=$'\e[0m' BLD=$'\e[1m'
RED=$'\e[31m' GRN=$'\e[32m' YLW=$'\e[33m' CYN=$'\e[36m'
info()  { echo "${CYN}info${RST}  $*" >&2; }
ok()    { echo "${GRN}ok${RST}    $*" >&2; }
warn()  { echo "${YLW}warn${RST}  $*" >&2; }
err()   { echo "${RED}error${RST} $*" >&2; }

# ── Runtime state directory ─────────────────────────────────────
RUNTIME_DIR="${DESKTOP_BRIDGE_DIR:-${TMPDIR:-/tmp}/desktop-bridge}"

stopped=false

for name in rclone cloudflared; do
  pidfile="$RUNTIME_DIR/$name.pid"
  if [[ -f "$pidfile" ]]; then
    pid=$(cat "$pidfile")
    if kill -0 "$pid" 2>/dev/null; then
      # Graceful: SIGTERM → wait up to 5 s → SIGKILL
      kill "$pid" 2>/dev/null || true
      for _ in $(seq 1 50); do
        kill -0 "$pid" 2>/dev/null || break
        sleep 0.1
      done
      if kill -0 "$pid" 2>/dev/null; then
        warn "$name did not exit gracefully, sending SIGKILL"
        kill -9 "$pid" 2>/dev/null || true
      fi
      ok "Stopped $name (PID $pid)"
      stopped=true
    fi
    rm -f "$pidfile"
  fi
done

# Clean up all state files
rm -f "$RUNTIME_DIR/tunnel-url" \
      "$RUNTIME_DIR/username" \
      "$RUNTIME_DIR/password" \
      "$RUNTIME_DIR/workspace" \
      "$RUNTIME_DIR/port" \
      "$RUNTIME_DIR/rclone.log" \
      "$RUNTIME_DIR/cloudflared.log"

if [[ "$stopped" == true ]]; then
  ok "Bridge stopped."
else
  info "Bridge was not running."
fi
