#!/usr/bin/env bash
set -euo pipefail
. commons.sh

git config core.hooksPath .githooks
info "Git hooks configured."