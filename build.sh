#!/bin/bash

if test -d ./dist; then rm -r ./dist; fi
if test -d ./panels/referenceViewer; then rm -r ./panels/referenceViewer; fi
npm i
npm run build
python3 ./build.py
if test -d ./panels/referenceViewer; then echo '/panels/referenceViewer exists'; fi
rm -r ./dist
if test -d ./panels/referenceViewer/assets; then echo 'Copied dist succesfully'; fi
echo $(ls)
echo $(ls ./panels)
echo $(ls ./panels/referenceViewer)
# sed -i "" "s,__VITE_SOME_TEST,${VITE_SOME_TEST},g" ./panels/referenceViewer/assets/index*.js
# echo $VITE_SOME_TEST