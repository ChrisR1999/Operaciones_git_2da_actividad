#!/bin/bash

filename_c="sl.c"
filename_patch="changes.patch"

echo -e "Invocamos git status para ver si hay algun cambio o novedad\n"

git status

echo -e "Pasando la salida de git diff al archivo changes.patch\n"

ls -a

sleep 2

git diff > $filename_patch

echo -e "Quitamos el cambio en el archivo sl.c con git checkout $filename_c\n"

git checkout $filename_c

sleep 10

echo -e "Aplicamos el parche a $filename_c con git apply $filename_patch\n"

git apply $filename_patch
