#!/bin/bash
set -e

[ -e out.pdf ] && rm out.pdf

echo concatinating
cat $(ls -t src/*.md) > out.md

echo pandocing
pandoc out.md -o out.pdf --from markdown --template ./template.latex --listings

rm out.md
open out.pdf
