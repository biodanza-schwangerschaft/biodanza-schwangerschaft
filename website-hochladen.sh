#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd biodanza-schwangerschaft.github.io

git pull

cp -f ../* ./
rm -f index.html
mv Website.html index.html
sed -e 's|</HEAD>|<link rel="stylesheet" type="text/css" href="style.css"></HEAD>|' -i '' index.html

git add .
git commit -m "Website upload"
git push
