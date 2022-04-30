#!/bin/bash

file=txt.txt

IFS=', ' read -r -a conjugaison <<< "$(cat $file)"

html=""
for i in {0..5};do
    case "$i" in
        0) html+="je ${conjugaison[$i]} tu ils nous\n";;
        1) html+="je tu ${conjugaison[$i+1]} il nous\n";;
    esac
done
echo -e "$html"

