#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

./website-bauen.sh

cd .biodanza-schwangerschaft.github.io

git add .
git commit -m "Website upload"
git push
