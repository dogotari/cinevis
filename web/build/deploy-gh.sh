#!/bin/sh
# To be run from build dir
# This will deploy the minified site to github page

ant minify
cp -rp ../publish/ ../../../gh-pages/
cd ../../../gh-pages/
git add .
git commit -m 'rebuild'
git push github gh-pages
