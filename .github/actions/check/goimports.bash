#!/usr/bin/env bash

set -euo pipefail

@error() { echo "${@}" >&2; }
@fatal() { @error "${@}" && exit 1; }

curl -sSfL https://install.octolab.org/goimports |
  sh -s -- -b /usr/local/bin -dx

expected="$(
  gh repo view kamilsk/go-tools \
    --json latestRelease --jq .latestRelease.tagName
)"
obtained="v$({ goimports -version 2>/dev/null || true; } | awk -F, '{print $1}')"

[ "${obtained}" == "${expected}" ] || @fatal "expected ${expected}, obtained ${obtained}"
