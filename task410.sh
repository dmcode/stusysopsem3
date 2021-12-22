#!/bin/bash

# Zad 4.10 Stwórz skrypt, który wyszuka nazwę procesu
# podaną jako parametr wśród wszystkich procesów obecnych
# w systemie i wyświetli informacje dotyczące tego procesu.

if [ -z $1 ]; then
    echo "To sie nie uda. Oczekiwano nazwy procesu jako parametr."
    exit 1
fi

ARR=($(pgrep $1))
LEN=${#ARR[@]}

if [ $LEN -lt 1 ]; then
    echo "Brak procesu o nazwie pasujacej do '$1'."
    exit
fi

ps -o pid,ppid=PARENT,sid,user -o pcpu,pmem,vsz=__MEMORY__ -o state=STATE -o stime=START,atime=ATIME,times=TOTAL_SEC -o cmd=COMMAND --pid ${ARR[@]}
