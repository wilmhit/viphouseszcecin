#!/bin/sh

mkdir -p original_static

for filename in static/**.jpg; do
    first_index=0
    last_index=$((${#filename} - 4))
    new_filename="${filename:$first_index:$last_index}.webp"
    echo -n "Compressing" $filename
    convert $filename $new_filename
    mv $filename original_static/
    echo " ... Done"
done;
