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

grep -E "([0-9]{4})-(0[0-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])" $file | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$/) print $i}'