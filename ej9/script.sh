#!/bin/bash

search_dir=$1
word="script"

if [ -z "$search_dir" ]; then
    echo "Search directory not specified"
    exit 1
fi

if [ ! -e "$search_dir" ]; then
    echo "Search directory not found"
    exit 1
fi

grep -irl "$word" "$search_dir"/*