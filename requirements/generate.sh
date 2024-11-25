#!/usr/bin/env bash

set -euxo pipefail

# https://stackoverflow.com/a/246128/1368502
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd "${SCRIPT_DIR}/.."

uv export > "${SCRIPT_DIR}/base.txt"
uv export --extra cpu > "${SCRIPT_DIR}/cpu.txt"
uv export --extra cu124 > "${SCRIPT_DIR}/cu124.txt"
uv export --extra pypi > "${SCRIPT_DIR}/pypi.txt"
