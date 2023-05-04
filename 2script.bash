#!/bin/bash

file1=$1
file2=$2
readarray -t students1 < "$file1"
readarray -t students2 < "$file2"
for student in "${students1[@]}"
do
    if [[ "${students2[*]}" =~ $student ]]
    then
        echo "Одинаковые студенты: $student"
        exit 1
    fi
done

echo "Нет одинаковых"