#! /bin/bash

echo "Minify base.js"
uglifyjs assets/js/base.js -c -o assets/js/base.min.js

echo "Minify curtain.js"
uglifyjs assets/js/curtain.js -c -o assets/js/curtain.min.js

echo "Minify flexverticalcenter.js"
uglifyjs assets/js/flexverticalcenter.js -c -o assets/js/flexverticalcenter.min.js

echo "Packing"
cat assets/js/flexverticalcenter.min.js assets/js/curtain.min.js assets/js/base.min.js > assets/js/base.pack.js

echo "... done!"