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

grep -E "(http|https)://([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?" $file