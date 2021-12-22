#!/bin/bash

# Zad 4.14 Stwórz skrypt wykonujący działanie na dwóch liczbach.
# Po podaniu liczb działanie powinno być wybrane z listy.

echo "Liczba A: "
read A
echo "Liczba B: "
read B

select i in Suma Odej Mnoz Dziel Koniec
do
case $i in
    "Suma") echo "A+B=$(echo "$A+$B" | bc -l)" ;;
    "Odej") echo "A-B=$(echo "$A-$B" | bc -l)" ;;
    "Mnoz") echo "A*B=$(echo "$A*$B" | bc -l)" ;;
    "Dziel") echo "A/B=$(echo "$A/$B" | bc -l | sed -e 's/^-\./-0./' -e 's/^\./0./')" ;;
    "Koniec") exit ;;
esac
done
