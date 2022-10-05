#!/bin/bash

#script used to change the content of a file (we are changing the apply path to an external or different one)
#points 5 and 6 covered

old_path=$1
new_path=$2
patch_path=$3

cat $patch_path

sed -i "s|${old_path}|${new_path}|g" $patch_path

echo -e "The new path to apply is ${new_path}\n"

cat $patch_path;

git apply $patch_path




