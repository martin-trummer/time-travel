#!/usr/bin/env bash
set -eu

rm -rf dist
mkdir dist

vite build

# copy extra assets
cp -a images dist/
cp -a scripts dist/
cp -a background.js dist/
cp -a manifest.json dist/


rm -f time-travel.zip
cd dist/
zip -r ../time-travel ./*