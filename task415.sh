#!/bin/bash

# Zad 4.15 Napisz skrypt, który umożliwi dodawanie rozszerzenia do pliku.
# Skrypt powinien najpierw spytać o nazwę pliku, a następnie wyświetlić
# listę rozszerzeń (np.: .old, _bak, .--001) do wyboru.

function fmv() {
    mv $1 "$1$2"
}


while :
do
    echo "Podaj nazwę pliku: "
    read FILE
    if [ -f $FILE ]; then
        break
    fi
    echo "Plik '$FILE' nie istnieje."
done


echo "Wybierz rozszerzenie:"

select i in  .old _bak .tmp Anuluj
do
case $i in
    ".old") fmv $FILE ".old"
            exit ;;
    "_bak") fmv $FILE "_bak"
            exit ;;
    ".tmp") fmv $FILE ".tmp"
            exit ;;
    "Anuluj") exit ;;
esac
done
