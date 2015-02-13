#!/bin/sh

mkdir -p dist/node

for file in *.geojson ; do \
	name=$(basename $file .geojson);
	outfile="dist/node/$name.js"
	echo "module.exports =" >> $outfile
	cat $file >> $outfile
	echo ";" >> $outfile
done
