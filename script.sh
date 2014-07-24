#!/bin/bash
catalog=$HOME"/ScrumblerBook/"
#cd $HOME
#rm -rf ScrumblerBook
cd $HOME
git clone https://github.com/UGroup/ScrumblerBook.git
cd ScrumblerBook
git checkout master
gitbook build $catalog -- github = UGroup/ScrumblerBook --title = "Scrumbler"
git add .
git commit -a -m "This is Scrumbler"
mkdir $HOME/new
cp -r _book/* $HOME/new
catalog=$HOME"/ScrumblerBook"
git checkout gh-pages
git rm -rf .
cp -r $HOME/new/* $catalog
git add .
git commit -a -m "This is Scrumbler"
git push origin gh-pages
#cd $HOME
#rm  -r  ScrumblerBook
#rm - r new
