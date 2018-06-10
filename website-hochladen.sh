#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
cd biodanza-schwangerschaft.github.io

git pull

cp -f ../* ./
rm -f index.html
mv Website.html index.html
# Add stylesheet (case depending on the OpenOffice version)
tag='<script>(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,"script",""//www.google-analytics.com/analytics.js","ga");ga("create","UA-120660038-1","biodanza-schwangerschaft.ch");ga("set","anonymizeIp",true);ga("require","displayfeatures");ga("send","pageview")</script><link rel="stylesheet" type="text/css" href="style.css">'
sed -e "s~</HEAD>~$tag</HEAD>~" -i '' index.html
sed -e "s~</head>~$tag</head>~" -i '' index.html

git add .
git commit -m "Website upload"
git push
