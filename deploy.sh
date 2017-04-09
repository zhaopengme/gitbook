#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd _book

git init

git config --global push.default current

git config --global user.email "imzhpe@qq.com"

git config --global user.name "mikey.zhaopeng"

echo "book.zhaopeng.me" > CNAME

git add --all .

git commit -m "Travis CI Auto Builder at ${rev}"

git branch gh-pages

git checkout gh-pages

git push --quiet --force https://$GH_TOKEN@github.com/zhaopengme/book.git gh-pages

