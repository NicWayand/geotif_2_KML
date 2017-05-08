#!/bin/bash

gdaldem color-relief /home/nwayand/python/RemoteSnow/Figures/landsat_snow_trans/LateSpring_snow.tif -alpha lateSnow_index_col.txt LateSpring_snow_clr.tif

gdal_translate -of KMLSUPEROVERLAY LateSpring_snow_clr.tif ./late_spring/LateSpring_snow.kml -co format=png
