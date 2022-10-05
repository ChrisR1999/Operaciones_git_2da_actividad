#!/bin/bash

#script used to generate a patch using variables to change the routes and names 
#points 7

previous_file=$1
new_file=$2
patch_file="rename_a_file.patch"

body="diff --git a/${previous_file} b/${new_file}\n\
similarity index 100%\n\
rename from ${previous_file}\n\
rename to ${new_file}"

touch $patch_file
echo -e $body>$patch_file

git apply $patch_file
git add -A #To see a "renamed" when we invoke git status