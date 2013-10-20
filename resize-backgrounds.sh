#! /bin/bash

for width in 1280x x480
do
	echo "Reszing to $width pixels"

	for ((i = 1; i <= 6; i++)) 
	do
	convert assets/img/slide-$i.jpg -thumbnail $width -quality 80 assets/img/slide-$i-${width}.jpg
	done
done

echo "... done!"