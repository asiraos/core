#/bin/bash

cd x86_64
repo-add flameos-repo.db.tar.gz *.pkg.tar.zst
rm -rf flameos-repo.db flameos-repo.files
mv flameos-repo.db.tar.gz flameos-repo.db
mv flameos-repo.files.tar.gz flameos-repo.files
