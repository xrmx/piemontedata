#!/bin/sh

mkdir -p dist

for file in *.geojson ; do \
	name=$(basename $file .geojson);
	outfile="dist/$name.js"
	echo "var $name =" >> $outfile
	cat $file >> $outfile
	echo ";" >> $outfile
done
