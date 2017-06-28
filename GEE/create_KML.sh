#!/bin/bash

tif_file=$1
col_file=$2
filename=$(basename "$tif_file")
out_dir="${filename%.*}"
echo $out_dir

mkdir -p $out_dir

gdaldem color-relief -alpha $tif_file $col_file temp.tif

gdal_translate -of KMLSUPEROVERLAY temp.tif ./$out_dir/${out_dir}.kml -co format=png

# Clean up
rm -f temp.tif

echo "Done."

