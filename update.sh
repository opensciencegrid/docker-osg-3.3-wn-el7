#!/bin/bash


set -eu
DATE=$(date +%Y%m%d)

sed -e '1i\
# GENERATED - EDIT Dockerfile.in INSTEAD' \
    -e "s/@BUILDDATE@/$DATE/" \
    Dockerfile.in > Dockerfile

git add Dockerfile
git commit -m "New build at $DATE"
