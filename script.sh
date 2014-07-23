#!/bin/bash
catalog=$HOME"/ScrumblerBook/"
git clone https://github.com/UGroup/ScrumblerBook.git
cd ScrumblerBook
git checkout gh-pages
git rm -rf .
git checkout master
gitbook build $catalog -- github = UGroup/ScrumblerBook --title = "Scrumbler"
git add .
git commit -a -m "This is Scrumbler"
mkdir new
mv _book/* new
catalog=$HOME"/ScrumblerBook"
git checkout gh-pages
mv new/* $catalog
git add .
git commit -a -m "This is Scrumbler"
git push origin gh-pages
