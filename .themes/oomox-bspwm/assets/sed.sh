#!/bin/sh
sed -i \
         -e 's/#1c1f26/rgb(0%,0%,0%)/g' \
         -e 's/#cdd3e0/rgb(100%,100%,100%)/g' \
    -e 's/#1c1f26/rgb(50%,0%,0%)/g' \
     -e 's/#285bff/rgb(0%,50%,0%)/g' \
     -e 's/#232730/rgb(50%,0%,50%)/g' \
     -e 's/#d3dae3/rgb(0%,0%,50%)/g' \
	"$@"
