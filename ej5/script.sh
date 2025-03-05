#!/bin/bash

log_file=$1
word="success"

if [ -z "$log_file" ]; then
    echo "Log file not specified"
    exit 1
fi

if [ ! -e "$log_file" ]; then
    echo "Log file not found"
    exit 1
fi

grep -v $word $log_file