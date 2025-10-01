#!/bin/bash

#/bin/bash

cd x86_64
repo-add asiraos-core.db.tar.gz *.pkg.tar.zst
gpg --detach-sign --armor asiraos-core.db.tar.gz
gpg --detach-sign --armor asiraos-core.files.tar.gz
rm -rf asiraos-core.db asiraos-core.files 
mv asiraos-core.db.tar.gz asiraos-core.db
mv asiraos-core.files.tar.gz asiraos-core.files

cd ..
git add .
git commit -m "AsiraOS repo update"
git push --set-upstream origin main
