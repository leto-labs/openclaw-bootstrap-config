# OpenClaw Bootstrap Config

Custom workspace templates for OpenClaw AI agents.

## Structure

```
templates.json          # Manifest fetched by claw-deployer at runtime
templates/
  default/
    BOOTSTRAP.md        # Blank Slate — open-ended self-discovery
  coder/
    BOOTSTRAP.md        # Coder — coding-focused assistant
    skills.txt          # Skills to pre-install (one slug per line)
  creator/
    BOOTSTRAP.md        # Creator — marketing & content assistant
    skills.txt          # Skills to pre-install (one slug per line)
  assistant/
    BOOTSTRAP.md        # Assistant — personal productivity assistant
    skills.txt          # Skills to pre-install (one slug per line)
```

## How It Works

When a user deploys a bot via claw-deployer, they choose a template. The deployer passes the template ID to the pod as `BOOTSTRAP_TEMPLATE`. On first boot, `entrypoint.sh` clones this repo and copies files from the chosen template subfolder into `~/.openclaw/`.

## Adding a Template

1. Create a new folder under `templates/` (e.g. `templates/creative/`)
2. Add a `BOOTSTRAP.md` (and any other `.md`/`.json` config files)
3. Optionally add a `skills.txt` to pre-install skills from ClawHub (one slug per line)
4. Add an entry to `templates.json` with `id`, `name`, `emoji`, and `description`

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

Add a `skills.txt` to any template to pre-install skills from ClawHub on first boot — one slug per line:

```
coding
git-essentials
debug-pro
```

Skills are installed via `clawhub install`. If a skill fails to install, it's skipped and the bot continues booting normally.

### Skills per Template

| Template    | Skill                                                      | Description                                               | Requires        |
| ----------- | ---------------------------------------------------------- | --------------------------------------------------------- | --------------- |
| **default** | _(none)_                                                   | Blank slate — user installs skills during onboarding      |                 |
| **coder**   | [coding](https://clawhub.ai/skills/coding)                 | Learns coding preferences from explicit feedback          | —               |
|             | [git-essentials](https://clawhub.ai/skills/git-essentials) | Essential Git commands and workflows                      | `git`           |
|             | [debug-pro](https://clawhub.ai/skills/debug-pro)           | 7-step debugging protocol with language-specific commands | —               |
|             | [clean-code](https://clawhub.ai/skills/clean-code)         | Pragmatic coding standards — concise, no over-engineering | —               |
| **creator** | [marketing-mode](https://clawhub.ai/skills/marketing-mode) | 23 marketing disciplines: strategy, psychology, SEO, CRO, ads | `node`, `npm` |
|             | [remotion-video-toolkit](https://clawhub.ai/skills/remotion-video-toolkit) | Programmatic video creation with React and Remotion | `node`, `npm` (React, Remotion, FFmpeg installed via npm) |
|             | [copywriting](https://clawhub.ai/skills/copywriting)       | Persuasive copy frameworks — AIDA, PAS, FAB, headlines, CTAs | —           |
|             | [social-media-content-calendar](https://clawhub.ai/skills/social-media-content-calendar) | Content calendars with platform-specific posts and scheduling | — |
| **assistant** | [memory](https://clawhub.ai/skills/memory)                 | Long-term memory — storage, retrieval, and maintenance patterns | —               |
|             | [productivity](https://clawhub.ai/skills/productivity)       | Adaptive productivity coaching — energy management, time blocking, boundaries | —   |
|             | [summarizer](https://clawhub.ai/skills/summarizer)           | Content distillation — audience-aware compression and format selection | —          |
