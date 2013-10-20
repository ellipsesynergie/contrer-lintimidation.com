#! /bin/bash

echo "Minify curtain.css"
cat assets/css/curtain.css | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > assets/css/curtain.min.css

echo "Minify styles.css"
cat assets/css/styles.css | sed -e 's/^[ \t]*//g; s/[ \t]*$//g; s/\([:{;,]\) /\1/g; s/ {/{/g; s/\/\*.*\*\///g; /^$/d' | sed -e :a -e '$!N; s/\n\(.\)/\1/; ta' > assets/css/styles.min.css

echo "Packing"
cat assets/css/curtain.min.css assets/css/styles.min.css > assets/css/styles.pack.css

echo "... done!"