#! /bin/bash

version=`date +%s`
version=`printf "s/{version}/%s/g" "$version"`

echo "Compiling english version"

cp -R assets compiled/en/
cat en.html | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > compiled/en/index.html
sed $version compiled/en/index.html > compiled/en/index.temp
mv compiled/en/index.temp compiled/en/index.html

echo "Compiling french version"

cp -R assets compiled/fr/
cat fr.html | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > compiled/fr/index.html
sed $version compiled/fr/index.html > compiled/fr/index.temp
mv compiled/fr/index.temp compiled/fr/index.html

echo "... done!"