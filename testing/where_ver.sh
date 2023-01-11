#!/bin/bash
path=$1
largest_num="0"

for file in "$path"/*; do
    if [[ $file == *.xml ]]; then
        continue
    fi
   
    if [[ $file > $largest_num ]]; then
        largest_num=$file
    fi
done
ver=$(basename $largest_num)
echo ${ver}

