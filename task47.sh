#!/bin/bash

# Zad 4.7 Napisz skrypt obliczający sumę, iloczyn, iloraz 4 liczb podanych jako parametry.

if [ $# -lt 4 ]; then
    echo "Nieprawidłowa liczba parametrów. Podaj min. 4 liczby."
    exit 1
fi

echo -e "================================\nWynik z bc:"

echo "Suma: $(printf "%s\n" $@ | paste -sd+ | bc -l)"
echo "Iloczyn: $(printf "%s\n" $@ | paste -sd* | bc -l)"
echo "Iloraz: $(printf "%s\n" $@ | paste -sd/ | echo "scale=4;$(cat -)" | bc -l | sed -e 's/^-\./-0./' -e 's/^\./0./')"


echo -e "\n================================\nWynik z wbudowanych operatorow:"

let sum=$1
let ilcz=$1
let ilrz=$1

for v in ${@:2}; do
    let sum=$sum+$v
    let ilcz=$ilcz*$v
    let ilrz=$ilrz/$v
done

echo "Suma: $sum"
echo "Iloczyn: $ilcz"
printf "Iloraz: %0.4f\n" $ilrz
