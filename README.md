# OpenClaw Bootstrap Config

Custom workspace templates for OpenClaw AI agents.

## Structure

```
templates.json          # Manifest — templates + skills to pre-install
templates/
  default/
    BOOTSTRAP.md        # Blank Slate — open-ended self-discovery
  coder/
    BOOTSTRAP.md        # Coder — coding-focused assistant
  creator/
    BOOTSTRAP.md        # Creator — marketing & content assistant
  assistant/
    BOOTSTRAP.md        # Assistant — personal productivity assistant
skills/
  clawlaunch-gog/       # Google Workspace CLI skill
  desktop-bridge/       # WebDAV file bridge skill
```

## How It Works

When a user deploys a bot via claw-deployer, they choose a template. The deployer passes the template ID to the pod as `BOOTSTRAP_TEMPLATE`. On first boot, `entrypoint.sh` clones this repo and copies files from the chosen template subfolder into `~/.openclaw/`.

## Adding a Template

1. Create a new folder under `templates/` (e.g. `templates/creative/`)
2. Add a `BOOTSTRAP.md` (and any other `.md`/`.json` config files)
3. Add an entry to `templates.json` with `id`, `name`, `emoji`, `description`, and optionally `skills` to pre-install

## File Format

Templates use Markdown with optional frontmatter:

```markdown
---
title: "BOOTSTRAP.md"
summary: "First-run ritual"
---

# Your Content Here
```

All files are optional. Missing templates fall back to `default`.

## Pre-installing Skills

Skills are defined per template in `templates.json` under the `skills` key. Each key is a GitHub repo, and the value is a list of skill names:

```json
{
  "id": "coder",
  "skills": {
    "leto-labs/openclaw-bootstrap-config": ["clawlaunch-gog", "desktop-bridge"],
    "openclaw/skills": ["coding", "git-essentials", "debug-pro", "clean-code"]
  }
}
```

On first boot, `install-skills.mjs` reads the template's skills and runs `skills add <repo> --skill <name> -a openclaw -g -y` for each repo. If a skill fails to install, it's skipped and the bot continues booting normally.

### Skills per Template

| Template    | Skill                                                      | Description                                               | Requires        |
| ----------- | ---------------------------------------------------------- | --------------------------------------------------------- | --------------- |
| **default** | [clawlaunch-gog](https://github.com/leto-labs/openclaw-bootstrap-config/tree/main/skills/clawlaunch-gog) | Google Workspace CLI — Gmail, Calendar, Drive, etc. | `gog` |
|             | [desktop-bridge](https://github.com/leto-labs/openclaw-bootstrap-config/tree/main/skills/desktop-bridge) | WebDAV file bridge via Cloudflare Tunnel | `rclone`, `cloudflared` |
| **coder**   | [coding](https://github.com/openclaw/skills/tree/main/skills/ivangdavila/coding)                 | Learns coding preferences from explicit feedback          | —               |
|             | [git-essentials](https://github.com/openclaw/skills/tree/main/skills/arnarsson/git-essentials) | Essential Git commands and workflows                      | `git`           |
|             | [debug-pro](https://github.com/openclaw/skills/tree/main/skills/cmanfre7/debug-pro)           | 7-step debugging protocol with language-specific commands | —               |
|             | [clean-code](https://github.com/openclaw/skills/tree/main/skills/gabrielsubtil/clean-code)         | Pragmatic coding standards — concise, no over-engineering | —               |
| **creator** | [marketing-mode](https://github.com/openclaw/skills/tree/main/skills/thesethrose/marketing-mode) | 23 marketing disciplines: strategy, psychology, SEO, CRO, ads | `node`, `npm` |
|             | [remotion-video-toolkit](https://github.com/openclaw/skills/tree/main/skills/shreefentsar/remotion-video-toolkit) | Programmatic video creation with React and Remotion | `node`, `npm` (React, Remotion, FFmpeg installed via npm) |
|             | [copywriting](https://github.com/openclaw/skills/tree/main/skills/jk-0001/copywriting)       | Persuasive copy frameworks — AIDA, PAS, FAB, headlines, CTAs | —           |
| **assistant** | [memory](https://github.com/openclaw/skills/tree/main/skills/ivangdavila/memory)                 | Long-term memory — storage, retrieval, and maintenance patterns | —               |
|             | [productivity](https://github.com/openclaw/skills/tree/main/skills/ivangdavila/productivity)       | Adaptive productivity coaching — energy management, time blocking, boundaries | —   |
|             | [summarizer](https://github.com/openclaw/skills/tree/main/skills/ivangdavila/summarizer)           | Content distillation — audience-aware compression and format selection | —          |
