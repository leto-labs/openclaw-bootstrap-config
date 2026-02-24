## Skills Management

This repo serves two purposes:

1. **Aggregator of remote skills** — installed via the Skills CLI
2. **Home for our own local skills** — maintained directly in `skills/`

### Workspace Layout

```
.agents/skills/          # Canonical skill folder (all skills live here)
.claude/skills           # -> ../.agents/skills  (symlink)
.cursor/skills           # -> ../.agents/skills  (symlink)
skills/                  # Local skills authored in this repo
skills-lock.json         # Lock file for remote skills only
```

### Remote Skills (Skills CLI)

Install third-party skills with the `skills` CLI. This writes to `.agents/skills/`, updates `skills-lock.json`, and is automatically available to Claude/Cursor via the folder symlinks.

```
skills add <owner/repo> --agent universal -y
skills add https://github.com/remotion-dev/skills --skill remotion-best-practices --agent universal -y
```

### Local Skills

Local skills live in `skills/` and are **not** managed by the Skills CLI (they do not appear in `skills-lock.json`).

To make a local skill visible to Claude/Cursor, add a relative symlink into `.agents/skills/`:

```bash
ln -s ../../skills/<skill-name> .agents/skills/<skill-name>
```

Example:

```bash
ln -s ../../skills/bitwarden-secrets .agents/skills/bitwarden-secrets
```

The symlink is relative so it works after cloning on any machine.
