#!/bin/bash

rm -rf .deploy
mkdir .deploy
cp -R * .deploy
cd .deploy
git init .
git remote add github git@github.com:actridge/actridge.com.git
git checkout -b gh-pages
echo ".deploy\ndeploy.sh" >> .gitignore
git add .
git commit -am "Static site deploy"
git push github gh-pages --force
rm -rf .deploy
