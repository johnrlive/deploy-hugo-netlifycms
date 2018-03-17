#!/bin/bash
echo "=== === === delete layouts file === === ==="
rm -rf site/layouts/
rm -rf site/content/*

echo "=== === === mkdir site/themes/ === === ==="
sleep 1
mkdir site/themes/

echo "=== === === git clone theme === === ==="
sleep 1
cd site/themes/
git clone https://github.com/johnrlive/hugo-theme-bootstrap4-blog
rm -rf hugo-theme-bootstrap4-blog/.git/
cd .. # site folder

rm config.toml
cp -vfR themes/hugo-theme-bootstrap4-blog/exampleSite/content/post/ ./content/post/
cp -vfR themes/hugo-theme-bootstrap4-blog/exampleSite/config.toml ./

echo "=== === === DONE === === ==="
echo "cd into sitename and run: npm start"