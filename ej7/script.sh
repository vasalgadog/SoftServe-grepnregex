#!/bin/bash

file=$1
word="root"

if [ -z "$file" ]; then
    echo "File not specified"
    exit 1
fi

if [ ! -e "$file" ]; then
    echo "File not found"
    exit 1
fi

grep -i -w "$word" $file