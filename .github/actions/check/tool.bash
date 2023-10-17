#!/usr/bin/env bash

set -euo pipefail

@error() { echo "${@}" >&2; }
@fatal() { @error "${@}" && exit 1; }

exit 0

curl -sSf https://install.octolab.org/service |
  sh -s -- -b /usr/local/bin -dx

expected="$(
  gh repo view octomation/go-service \
    --json latestRelease --jq .latestRelease.tagName
)"
obtained="v$(service version | sed -n 2p | awk -F: '{print $2}' | tr -d ' ')"

[ "${obtained}" == "${expected}" ] || @fatal "expected ${expected}, obtained ${obtained}"
