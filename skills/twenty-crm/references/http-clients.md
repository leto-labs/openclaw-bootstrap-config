# Twenty API HTTP client patterns

Use these patterns to make Twenty REST and GraphQL calls reliable from shell and Python clients.

## Table of contents

1. Recommended defaults
2. Endpoint map and base URL normalization
3. Hardened curl REST template
4. Hardened curl GraphQL template
5. Hardened Python template (`requests`)
6. Hardened Python template (`urllib`)
7. Pagination pattern (REST: fetch all companies)
8. Pagination pattern (GraphQL: fetch all companies)
9. Cloudflare `403` / `1010` triage

## 1) Recommended defaults

- Prefer `curl` for shell workflows and one-off automation.
- Prefer `requests` for Python app/integration code.
- If using stdlib `urllib`, always set a custom `User-Agent`; the default `Python-urllib/*` may be blocked by Cloudflare in some environments.
- Always send `Authorization: Bearer <token>` and `Accept: application/json`.

## 2) Endpoint map and base URL normalization

- Set `TWENTY_BASE_URL` to the workspace host without object path:
  - `https://api.twenty.com`, `https://app.twenty.com`, or workspace host (for example `https://clawlaunch.twenty.com`)
  - self-hosted: `https://crm.example.com`
- Build REST core URLs as: `"$TWENTY_BASE_URL/rest/<path>"`.
- Use core GraphQL at: `"$TWENTY_BASE_URL/graphql"`.
- Use metadata GraphQL at: `"$TWENTY_BASE_URL/metadata"`.
- Metadata REST discovery is usually at `"$TWENTY_BASE_URL/rest/metadata/<resource>"`; some hosted versions reject query params on these routes.
- If input base URL already includes `/rest`, strip it once and append `/rest` in code to avoid double segments.

## 3) Hardened curl REST template

```bash
curl --silent --show-error --fail-with-body --location \
  --retry 3 --retry-all-errors --retry-delay 1 \
  --connect-timeout 10 --max-time 60 \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Accept: application/json" \
  "$TWENTY_BASE_URL/rest/companies?limit=200"
```

Use `--fail-with-body` when available (curl >= 7.76) so non-2xx responses remain visible in logs.

## 4) Hardened curl GraphQL template

```bash
curl --silent --show-error --fail-with-body --location \
  --retry 3 --retry-all-errors --retry-delay 1 \
  --connect-timeout 10 --max-time 60 \
  -H "Authorization: Bearer $TWENTY_API_KEY" \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -d '{
    "query":"query Companies($first:Int!, $after:String) { companies(first:$first, after:$after) { edges { node { id name } } pageInfo { hasNextPage endCursor } } }",
    "variables":{"first":50,"after":null}
  }' \
  "$TWENTY_BASE_URL/graphql"
```

## 5) Hardened Python template (`requests`)

```python
import os
import requests

base_url = os.environ["TWENTY_BASE_URL"].rstrip("/")
token = os.environ["TWENTY_API_KEY"]

session = requests.Session()
session.headers.update(
    {
        "Authorization": f"Bearer {token}",
        "Accept": "application/json",
        "User-Agent": "twenty-crm-client/1.0",
    }
)

url = f"{base_url}/rest/companies"
response = session.get(url, params={"limit": 200}, timeout=(10, 30))
response.raise_for_status()
payload = response.json()
```

## 6) Hardened Python template (`urllib`)

```python
import json
import os
from urllib.error import HTTPError
from urllib.parse import urlencode
from urllib.request import Request, urlopen

base_url = os.environ["TWENTY_BASE_URL"].rstrip("/")
token = os.environ["TWENTY_API_KEY"]
url = f"{base_url}/rest/companies?{urlencode({'limit': 200})}"

request = Request(
    url,
    headers={
        "Authorization": f"Bearer {token}",
        "Accept": "application/json",
        "User-Agent": "twenty-crm-client/1.0",
    },
)

try:
    with urlopen(request, timeout=30) as response:
        payload = json.loads(response.read().decode("utf-8"))
except HTTPError as err:
    body = err.read().decode("utf-8", errors="replace")
    raise RuntimeError(f"HTTP {err.code}: {body[:500]}") from err
```

## 7) Pagination pattern (REST: fetch all companies)

```bash
starting_after=""
while true; do
  url="$TWENTY_BASE_URL/rest/companies?limit=200"
  if [ -n "$starting_after" ]; then
    url="$url&starting_after=$starting_after"
  fi

  page="$(curl --silent --show-error --fail-with-body --location \
    -H "Authorization: Bearer $TWENTY_API_KEY" \
    -H "Accept: application/json" \
    "$url")"

  echo "$page" | jq -c '.data.companies[]'

  has_next="$(echo "$page" | jq -r '.pageInfo.hasNextPage // false')"
  [ "$has_next" = "true" ] || break

  starting_after="$(echo "$page" | jq -r '.pageInfo.endCursor // empty')"
  [ -n "$starting_after" ] || break
done
```

## 8) Pagination pattern (GraphQL: fetch all companies)

```bash
after=""
while true; do
  payload="$(jq -nc --arg after "$after" '{
    query: "query Companies($first:Int!, $after:String) { companies(first:$first, after:$after) { edges { node { id name } } pageInfo { hasNextPage endCursor } } }",
    variables: { first: 200, after: (if $after == "" then null else $after end) }
  }')"

  page="$(curl --silent --show-error --fail-with-body --location \
    -H "Authorization: Bearer $TWENTY_API_KEY" \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -d "$payload" \
    "$TWENTY_BASE_URL/graphql")"

  echo "$page" | jq -c '.data.companies.edges[].node'

  has_next="$(echo "$page" | jq -r '.data.companies.pageInfo.hasNextPage // false')"
  [ "$has_next" = "true" ] || break

  after="$(echo "$page" | jq -r '.data.companies.pageInfo.endCursor // empty')"
  [ -n "$after" ] || break
done
```

## 9) Cloudflare `403` / `1010` triage

If response is `403` and body includes `error code: 1010`:

1. Treat it as edge/WAF client-fingerprint blocking (not necessarily bad token/permissions).
2. Retry with `curl` or Python with explicit `User-Agent` and timeout.
3. Keep token, path, and query unchanged while comparing clients to isolate transport issues.
4. If issue persists across clients, then inspect token scope/role and workspace permissions.
