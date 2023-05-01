#!/usr/bin/env bash
set -eu

MODE=$1

ROOT=$(dirname -- "$0")/..
cd "$ROOT"

rm -rf dist
mkdir dist

vite build -m "${MODE}"

# copy extra assets
mkdir dist/images/
cp -a images/*.png dist/images/
cp -a src/manifest.json dist/


rm -f time-travel.zip
cd dist/
zip -r time-travel ./*