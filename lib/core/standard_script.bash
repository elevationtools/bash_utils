#!/usr/bin/env bash

. "$ELEVATION_BASH_UTILS/core/script_dir.bash"

function elevation::init() {
  set -euo pipefail
  main "$@"
}

