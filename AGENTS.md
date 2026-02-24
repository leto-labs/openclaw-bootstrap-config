## Skills CLI

Use this workspace layout:

- Canonical install path: `.agents/skills`
- Claude path: `.claude/skills -> ../.agents/skills`
- Cursor path: `.cursor/skills -> ../.agents/skills`

Install once to the canonical path using the `universal` agent target (maps to `.agents/skills`).

```
skills add <owner/repo> --agent opencode -y
skills add https://github.com/remotion-dev/skills --skill remotion-best-practices --agent universal -y
```