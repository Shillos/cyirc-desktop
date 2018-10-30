#!/bin/bash
set -e
set -x
git init
git https://github.com/kiwiirc/kiwiirc.git
cd ./kiwiirc/
yarn install && yarn build
mv ./dist ../client
cd ..
cp client-defaults/config.json client/static/config.json
cp client-defaults/package.json client/package.json
cp client-defaults/main.js client/main.js
cp client-defaults/kiwiirclogo.png client/kiwiirclogo.png
cp -r client-defaults/img client/img
cp -r client-defaults/plugins client/plugins
cd client/
npm install
