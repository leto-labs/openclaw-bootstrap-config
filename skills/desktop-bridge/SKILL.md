---
name: desktop-bridge
description: >
  Access agent workspace files from any device via WebDAV + Cloudflare Tunnel.
  Starts a file bridge so users can browse, upload, and download files using
  their native file manager (Finder, Explorer, Files app, Dolphin).
  Use for "file sync", "share files", "access files", "remote files",
  "webdav", "file bridge", "mount workspace", "browse files from phone".
homepage: "https://github.com/leto-labs/desktop-bridge"
metadata:
  openclaw:
    emoji: "🌉"
    version: "0.1.0"
    requires:
      bins: ["rclone", "cloudflared"]
    install:
      - id: "rclone-brew"
        kind: "brew"
        formula: "rclone"
        bins: ["rclone"]
        label: "Install rclone (brew)"
      - id: "cloudflared-brew"
        kind: "brew"
        formula: "cloudflared"
        bins: ["cloudflared"]
        label: "Install cloudflared (brew)"
---

# desktop-bridge

File bridge: user's devices ↔ agent workspace via WebDAV + Cloudflare Tunnel.

Start
- **Before starting, ask the user:** read-only or full read-write access?
- `bash {baseDir}/scripts/start.sh --path "$HOME/workspace"`
- Add `--read-only` if user chose read-only
- Prints tunnel URL + credentials. **Give all three to the user.**
- `--port 9090` custom port (default 8080)
- `--user alice --pass secret` custom credentials (default: bridge / auto-generated)
- First positional arg = `--path` for convenience

Stop
- `bash {baseDir}/scripts/stop.sh`

Status
- `bash {baseDir}/scripts/status.sh`
- Shows connection info if running, suggests start if not

How the user connects (tell them)
- **macOS Finder**: Cmd+K → paste URL
- **Windows Explorer**: Map Network Drive → paste URL
- **Linux GNOME**: Files → Other Locations → `davs://` + hostname
- **Linux KDE**: Dolphin → `webdavs://` + hostname
- **iOS Files**: Connect to Server → paste URL
- **Android**: CX File Explorer → Remote → WebDAV (host, port 443, HTTPS)
- **Obsidian**: Remotely Save plugin → WebDAV → paste URL
- Enter username and password when prompted

Manual install (if brew is unavailable)
- rclone: `curl -fsSL https://rclone.org/install.sh | bash` or download from https://rclone.org/downloads/
- cloudflared: download from https://github.com/cloudflare/cloudflared/releases/latest

Notes
- Tunnel URL changes on every restart (free Cloudflare quick tunnel).
- 100 MB max file size (Cloudflare free tier limit).
- Bridge runs in background — no open terminal needed.
- Always stop when user is done.
- State files in `${DESKTOP_BRIDGE_DIR:-${TMPDIR:-/tmp}/desktop-bridge}` (never in skill dir).
