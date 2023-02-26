#!/bin/bash

if test -d ./dist; then rm -r ./dist; fi
if test -d ./panels/referenceViewer; then rm -r ./panels/referenceViewer; fi
npm i
npm run build
cp -r ./dist ./panels/referenceViewer

ls ./panels/
ls ./panels/referenceViewer

if test -d ./panels/referenceViewer; then echo 'Copied /dist to /panels/referenceViewer'; fi

python3 ./build.py
rm -r ./dist
echo $(ls)
echo $(ls ./panels)
echo $(ls ./panels/referenceViewer)