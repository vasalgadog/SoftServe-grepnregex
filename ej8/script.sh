#!/bin/bash

file=$1

if [ -z "$file" ]; then
    echo "File not specified"
    exit 1
fi

if [ ! -e "$file" ]; then
    echo "File not found"
    exit 1
fi

line=$2

if [ -z "$line" ]; then
    echo "Line number not specified"
    exit 1
fi

grep -n "$line" $file