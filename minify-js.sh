#! /bin/bash

echo "Minify base.js"
uglifyjs javascripts/base.js -c -o javascripts/base.min.js

echo "Minify curtain.js"
uglifyjs javascripts/curtain.js -c -o javascripts/curtain.min.js

echo "Minify flexverticalcenter.js"
uglifyjs javascripts/flexverticalcenter.js -c -o javascripts/flexverticalcenter.min.js

echo "Packing"
cat javascripts/flexverticalcenter.min.js javascripts/curtain.min.js javascripts/base.min.js > javascripts/base.pack.js

echo "... done!"