#!/bin/sh
echo "Get more information at http://penguindreams.org/blog/jekyll-3-and-foundation-6/"
rm -rf node_modules 2> /dev/null
npm install foundation-sites@6.4.3
rm -rf _foundation 2> /dev/null
mkdir _foundation
cp -R node_modules/foundation-sites/scss _foundation
cp -R node_modules/foundation-sites/_vendor _foundation
