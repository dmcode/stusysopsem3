#!/bin/bash

# Zad 4.5 Stwórz skrypt nadający prawo do zapisu dla grupy,
# plikowi podanemu jako parametr (wywołanie: skrypt nazwapliku).
# Jeśli nazwa pliku nie zostanie podana wyświetl komunikat o błędzie.

if [ -z $1 ]; then
    echo "To sie nie uda. Oczekiwano nazwy pliku jako parametr."
    exit 1
elif [ ! -f $1 ]; then
    echo "Plik '$1' nie istnieje."
    exit 1
fi

chmod g+w $1
ls -la $1
