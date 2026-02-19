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
- **Before starting, ask the user:** which directory to share, and read-only (default) or read-write?
- `bash {baseDir}/scripts/start.sh --path "$HOME/workspace" --read-only`
- **Default to `--read-only`** unless the user explicitly requests write access.
- If the user requests write access, warn them: files uploaded by remote users will be readable by the agent, which creates an indirect prompt-injection risk. Only enable write access for trusted connections.
- Omit `--read-only` only if the user confirms they understand the risk.
- The script prints the tunnel URL and credentials to stderr. **Do NOT repeat the password in chat.** Instead, tell the user to copy the credentials from the terminal output, or run `bash {baseDir}/scripts/status.sh` to see them again.
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
- rclone: download the binary for your platform from the official releases page, verify the checksum, and place it in your PATH
- cloudflared: download the binary for your platform from the official releases page, verify the checksum, and place it in your PATH
- On Debian/Ubuntu: `sudo apt install rclone` and `sudo apt install cloudflared`
- On Arch: `sudo pacman -S rclone cloudflared`

Security
- **Never serve `$HOME` or `/`.** Only serve the specific project or workspace directory the user requests.
- **Default to read-only.** Write access lets remote users place files the agent may later read (indirect prompt injection).
- **Do not echo credentials in chat.** The start script prints them to stderr; direct the user there or to `status.sh`.
- Credentials and state are stored owner-only (mode 700/600) in the runtime directory.
- Always stop the bridge when the user is done — tunnels are publicly reachable.

Notes
- Tunnel URL changes on every restart (free Cloudflare quick tunnel).
- 100 MB max file size (Cloudflare free tier limit).
- Bridge runs in background — no open terminal needed.
- Always stop when user is done.
- State files in `${DESKTOP_BRIDGE_DIR:-${TMPDIR:-/tmp}/desktop-bridge}` (never in skill dir).
