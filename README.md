# OpenClaw Bootstrap Config

Custom workspace templates for OpenClaw AI agents.

## What This Is

Template files that configure the initial workspace and behavior of OpenClaw bots. These templates define how bots introduce themselves, what personality traits they have, and how they interact with users.

## Available Templates

- **BOOTSTRAP.md** - First conversation script and self-discovery prompts
- **IDENTITY.md** - Bot identity and role definition
- **USER.md** - User information template
- **SOUL.md** - Core values and boundaries
- **AGENTS.md** - Agent instructions and behavior guidelines
- **TOOLS.md** - Available tools and capabilities
- **HEARTBEAT.md** - Status and activity tracking

All files are optional. Missing templates will use OpenClaw defaults.

## File Format

Templates use Markdown format. You can optionally include frontmatter for metadata:

```markdown
---
version: 1.0
---

# Your Content Here
```

## Customization

Edit any template file to customize bot behavior:
- Modify the personality and tone
- Change initial conversation prompts
- Adjust available tools and features
- Define custom values and boundaries
