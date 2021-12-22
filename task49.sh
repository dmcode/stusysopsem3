#!/bin/bash

# Zad 4.9 Znajdź błędy w skrypcie

# if [-d plik ]; then  # brak spacji przed operatorem -d
if [ -d plik ]; then
mv plik plik2
# elif [ -f plik3 ] then  # brak średnika po warunku
elif [ -f plik3 ]; then
# mw plik3 plik4  # brak polecenia mw
mv plik3 plik4
fi
