#!/bin/bash
set -ev
git clone https://${github.com/sorbreaker/sorbreaker.github.io.git} .deploy_git
cd .deploy_git
git checkout master
cd ../
mv .deploy_git/.git/ ./public/
cd ./public
git config user.name  "sorbreaker"
git config user.email "sorbreaker@sina.com" 
# add commit timestamp
git add .
git commit -m "Travis CI Auto Builder at `date +"%Y-%m-%d %H:%M"`"
git push --force --quiet "https://${travis-ci}@${github.com/sorbreaker/sorbreaker.github.io.git}" master:master
git push --force --quiet "https://hadronw:${travis-coding}@${git.coding.net/sorbreaker/sorbreaker.git}" master:master