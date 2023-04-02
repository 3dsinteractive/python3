#!/bin/bash

new=$1

if [ "$new" = "" ]; then
    echo -e "Must specify New tags (for create): Example command should be ./release.sh 2.0"
    exit 1
fi

git fetch
git push
git tag -a v$new -m "Release v$new"
git push origin v$new