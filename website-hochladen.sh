#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd biodanza-schwangerschaft.github.io

git pull

cp -f ../* ./
rm -f index.html
mv Website.html index.html
# Add stylesheet (case depending on the OpenOffice version)
sed -e 's|</HEAD>|<link rel="stylesheet" type="text/css" href="style.css"></HEAD>|' -i '' index.html
sed -e 's|</head>|<link rel="stylesheet" type="text/css" href="style.css"></head>|' -i '' index.html

git add .
git commit -m "Website upload"
git push
