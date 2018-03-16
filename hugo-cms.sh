#!/bin/bash
rm -rf one-click-hugo-cms/

echo "=== download one-click-hugo-cms repo"
git clone https://github.com/netlify-templates/one-click-hugo-cms
cd one-click-hugo-cms
rm -rf .git/

### Local copy of one-click-hugo-cms
# cp test/one-click-hugo-cms/. ./
# cd one-click-hugo-cms

echo "=== delete layouts file"
rm -rf site/layouts/
rm -rf site/content/*

echo "=== mkdir site/themes/"
sleep 1
mkdir site/themes/

echo "=== git clone theme"
sleep 1
cd site/themes/
git clone https://github.com/alanorth/hugo-theme-bootstrap4-blog
rm -rf hugo-theme-bootstrap4-blog/.git/
cd .. # site folder

rm config.toml
cp -vfR themes/hugo-theme-bootstrap4-blog/exampleSite/content/post/ ./content/post/
cp -vfR themes/hugo-theme-bootstrap4-blog/exampleSite/config.toml ./

# start Server
npm install
npm start
