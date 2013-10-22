#! /bin/bash

echo "Minify curtain.css"
cat stylesheets/curtain.css | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > stylesheets/curtain.min.css

echo "Minify styles.css"
cat stylesheets/styles.css | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > stylesheets/styles.min.css

echo "Minify ie8.css"
cat stylesheets/ie8.css | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > stylesheets/ie8.min.css

echo "Packing"
cat stylesheets/curtain.min.css stylesheets/styles.min.css > stylesheets/styles.pack.css

echo "... done!"