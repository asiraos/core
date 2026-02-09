#!/bin/bash

set -euo pipefail

cd x86_64

# Clean old repo metadata/signatures so pacman never sees stale sigs.
rm -f asiraos-core.db asiraos-core.db.sig asiraos-core.db.tar.gz asiraos-core.db.tar.gz.sig
rm -f asiraos-core.files asiraos-core.files.sig asiraos-core.files.tar.gz asiraos-core.files.tar.gz.sig
rm -f asiraos-core.db.tar.gz.asc asiraos-core.files.tar.gz.asc

# Generate signed repo database/files.
repo-add --sign --verify --key 1C4AEDE69936E27C asiraos-core.db.tar.gz ./*.pkg.tar.zst

# Arch repo layout expects these compatibility symlinks.
ln -srf asiraos-core.db.tar.gz asiraos-core.db
ln -srf asiraos-core.db.tar.gz.sig asiraos-core.db.sig
ln -srf asiraos-core.files.tar.gz asiraos-core.files
ln -srf asiraos-core.files.tar.gz.sig asiraos-core.files.sig

cd ..
git add .
git commit -m "AsiraOS repo update"
git push --set-upstream origin main
