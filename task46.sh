#!/bin/bash

# Zad 4.6 Załóżmy, że w systemie nie ma polecenia mv.
# Napisz skrypt, który umożliwi zastąpienie tego polecenia.

if [ ! -e $1 ]; then
    echo "Obiekt źródłowy '$1' nie istnieje."
    exit 1
elif [ -z $2 ]; then
    echo -e "Oczekiwano miejsca docelowego.\nWywołanie: task46.sh ZRODLO CEL"
    exit 1
fi

DIR=`dirname $2`

if [ ! -d $DIR ]; then
    mkdir -p $DIR
fi

cp -aR $1 $2
rm -r $1
