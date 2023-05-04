#!/bin/bash

file1=$1
file2=$2

count1=$(wc -l < "$file1")
count2=$(wc -l < "$file2")

if (( count1 == count2 )); then
    echo "Одинаково людей"
else
    echo "Людей в $file1 - $count1"
    echo "Людей в $file2 - $count2"
fi