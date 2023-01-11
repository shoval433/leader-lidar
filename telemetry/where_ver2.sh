
#!/bin/bash
path=$1
largest_num="0"
x_y=$2

for file in "$path"/*; do
    if [[ $file == *.xml ]]; then
        continue
    fi
   file_ver=$(basename $file)
   test=$(echo $file_ver | cut -d '.' -f1-2)
   
    if [[ $test == $x_y ]];then
        if [[ $file > $largest_num ]]; then
        largest_num=$file
        fi
    fi
    
    
done
ver=$(basename $largest_num)
echo ${ver}
