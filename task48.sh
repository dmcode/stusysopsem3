#!/bin/bash

# Zad 4.8 Napisz skrypt dodający do podanej nazwy pliku rozszerzenie .old

if [ -z $1 ]; then
   echo "Oczekiwano nazwy pliku."
   exit 1
fi

if [ ! -f $1 ]; then
    echo "Plik '$1' nie istnieje."
    exit 1
fi

mv $1 "$1.old"
