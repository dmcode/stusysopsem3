#!/bin/bash

# Zad 4.3. Napisz skrypt wyświetlający nazwę skryptu oraz cztery jego parametry.

echo "Nazwa: $0"

for i in {1..4}; do
    N=$i
    VAL=${!N}
    echo "Parametr $N: $([ $VAL ] && echo $VAL || echo '---')"
done
