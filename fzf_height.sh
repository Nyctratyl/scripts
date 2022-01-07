#!/bin/bash
shopt -s checkwinsize; (:);
perc=$(echo "$(ls -al | wc -l) * 100 / $LINES" | bc)

if [[ $perc -gt 95 ]]
then
    echo "95"
else
    echo $perc
fi
