#! /bin/bash

for width in 1280x x480
do
	echo "Reszing to $width pixels"

	for ((i = 1; i <= 6; i++)) 
	do
	convert images/slide-$i.jpg -thumbnail $width -quality 80 images/slide-$i-${width}.jpg
	done
done

echo "... done!"