#!/bin/bash

# Zad 4.13 Napisz skrypt wyświetlający pliki w podanym katalogu.
# Katalog ma być podawany po uruchomieniu skryptu.

while :
do
    echo "Ścieżka do katalogu: "
    read DIRPATH
    if [ -d $DIRPATH ]; then
        break
    fi
    echo "Katalog '$DIRPATH' nie istnieje."
done

F=()
DIRPATH="$DIRPATH/*"

for v in $DIRPATH; do
    if [ -f $v ]; then
        #F[${#F[@]}]=$(basename $v)
        F+=("$(basename $v)")
    fi
done

echo "Razem: $(echo ${#F[@]})"
echo $(printf "%s " "${F[@]}")
