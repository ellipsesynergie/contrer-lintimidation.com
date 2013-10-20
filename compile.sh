#! /bin/bash

echo "Compiling english version"

cp -R assets compiled/en/
cp en.html compiled/en/index.html

echo "Compiling french version"

cp -R assets compiled/fr/
cp fr.html compiled/fr/index.html

echo "... done!"