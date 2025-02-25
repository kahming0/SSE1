#!/bin/bash

PRINT=false
if [[ "$1" == "--PRINT" ]]; then
    PRINT=true
fi

a=0
b=1

while true; do
    if [[ "$PRINT" == true ]]; then
        echo "$a"
    fi
    fn=$(echo "$a + $b" | bc)
    a=$b
    b=$fn
done
