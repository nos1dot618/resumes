#!/usr/bin/env bash
set -euo pipefail
. commons.sh

mkdir -p dist

for file in resumes/resume-*.typ; do
    out="dist/$(basename "${file%.typ}.pdf")"
    typst compile --root "./" "$file" "$out"
    info "Generated '$out'."
done
