#!/bin/bash

set -euo pipefail

cd x86_64

repo-add asiraos-core.db.tar.gz *.pkg.tar.zst

cd ..
git add .
git commit -m "AsiraOS repo update"
git push --set-upstream origin main
