---
name: repocache
description: Research external libraries/frameworks by querying locally cloned repos, and bootstrap a missing `repocache/` workspace. Use when asked to inspect third-party source, answer "how does X work in <library>", add a package/repo to repocache, or set up repocache in a new project. Keeps static scripts in the skill and dynamic repo data in local `./repocache/`.
---

# repocache

Use `repocache/` as a local mirror of third-party repositories so answers come from source code, not model memory.

## What lives where

```text
skills/repocache/scripts/
├── bootstrap_repocache.sh   # initialize local repocache workspace
└── clone.sh                 # sync script (static, bundled with skill)

.gitignore                   # root ignore rules for repocache clones

repocache/
├── repocache.json      # tracked config
└── <org>/<repo>/       # cloned repositories
```

If `repocache/` or `repocache/repocache.json` is missing, bootstrap first.

## Quick workflow

1. Bootstrap `repocache/` if needed.
2. Add/update a resource in `repocache/repocache.json`.
3. Run the bundled `skills/repocache/scripts/clone.sh` to clone or update repositories.
4. Search cloned source with `rg`, `Glob`, `SemanticSearch`, and `Read`.
5. Refine config entries when you learn repo layout details.

## 1) Bootstrap when missing

Run the bundled bootstrap script:

```bash
bash skills/repocache/scripts/bootstrap_repocache.sh
```

If your environment stores skills elsewhere, run the same script from that skill installation path.

Verify:

```bash
test -f repocache/repocache.json
test -f .gitignore
test -f skills/repocache/scripts/clone.sh
```

Root `.gitignore` should include:

```gitignore
repocache/*
!repocache/repocache.json
```

Use `repocache/*` (not `repocache/`) so `repocache/repocache.json` can stay tracked.

## 2) Config schema (`repocache/repocache.json`)

Top level:

```json
{
  "resources": []
}
```

Each resource is an object with this core schema:

| Field  | Required | Used by `clone.sh` | Description |
| ------ | -------- | ------------------ | ----------- |
| `name` | Yes      | Yes                | Lookup key used by `./clone.sh <name>` |
| `url`  | Yes      | Yes                | Git clone URL (`https://...` or `git@...`) |
| `path` | Yes      | Yes                | Clone destination relative to `repocache/` (usually `org/repo`) |

Example:

```json
{
  "name": "@trpc/server",
  "url": "https://github.com/trpc/trpc.git",
  "path": "trpc/trpc"
}
```

Unknown fields are allowed for agent notes, but the current `clone.sh` ignores them.

## 3) Add resources

### Workflow A: user gives a GitHub URL

1. Derive `path` from URL (`org/repo`).
2. Choose `name`:
   - npm package name if known (preferred), otherwise repo name.
3. Add `{ "name", "url", "path" }` to `repocache.json`.
4. Clone it:
   ```bash
   bash skills/repocache/scripts/clone.sh <name> --root repocache
   ```

### Workflow B: user gives an npm package name

1. Resolve repository URL:
   ```bash
   npm view <package-name> repository.url
   ```
2. Normalize URL to a cloneable Git URL (HTTPS or SSH).
3. Set `name` to the npm package name.
4. Set `path` to `org/repo` from the URL.
5. Add the resource and run:
   ```bash
   bash skills/repocache/scripts/clone.sh <package-name> --root repocache
   ```

For monorepos, multiple package names can intentionally point at the same `path`.

## 4) Clone/update commands

```bash
bash skills/repocache/scripts/clone.sh                               # sync all (default root: ./repocache)
bash skills/repocache/scripts/clone.sh <name>                        # sync one
bash skills/repocache/scripts/clone.sh --no-update                   # clone missing only
bash skills/repocache/scripts/clone.sh <name> --no-update --root repocache
REPOCACHE_DIR=./repocache bash skills/repocache/scripts/clone.sh <name>
```

Behavior:

- Missing clone: `git clone --depth 1`
- Existing clone: `git fetch` + `git pull --ff-only`
- Missing `name`: exits with error

## 5) Search process

1. Read `repocache/repocache.json` and find a matching `resources[].name`.
2. Build repo root from `path`: `repocache/<path>/`.
3. If missing, run `bash skills/repocache/scripts/clone.sh <name> --root repocache`.
4. Search from repo root:
   - `rg` for symbols/strings
   - `Glob` for file discovery
   - `SemanticSearch` for behavior-level questions
   - `Read` for exact files and snippets
5. For monorepos, narrow manually to likely subdirs (`packages/<pkg>`, `src`, etc.).

## Maintenance guidance

- Keep `name` stable to avoid lookup misses.
- Prefer SSH URLs for private repos.
- If clone/auth fails, switch URL form and retry.
- Update entries when you discover better package naming or path mapping.
