#!/usr/bin/env bash

set -euo pipefail

@error() { echo "${@}" >&2; }
@fatal() { @error "${@}" && exit 1; }

curl -sSfL https://install.octolab.org/godownloader |
  sh -s -- -b /usr/local/bin -dx

expected="$(
  gh repo view kamilsk/godownloader \
    --json latestRelease --jq .latestRelease.tagName
)"
obtained="v$(godownloader --version 2>&1 | awk -F, '{print $1}')"

[ "${obtained}" == "${expected}" ] || @fatal "expected ${expected}, obtained ${obtained}"
