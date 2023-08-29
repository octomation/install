#!/usr/bin/env bash

set -euo pipefail

@error() { echo "${@}" >&2; }
@fatal() { @error "${@}" && exit 1; }

# TODO:implement
echo not implemented yet
