#!/bin/bash
sitename="johnrlive"

## uncomment to delte site name
# rm -rf $sitename

echo "=== download one-click-hugo-cms repo as $sitename ==="
git clone https://github.com/netlify-templates/one-click-hugo-cms $sitename
cd $sitename
rm -rf .git/
npm install

## Local copy of one-click-hugo-cms
# rm -rf one-click-hugo-cms
# cp test/one-click-hugo-cms/. ./
# cd one-click-hugo-cms

## Run the theme script
bash hugo-theme.sh

## Start Server
npm start
