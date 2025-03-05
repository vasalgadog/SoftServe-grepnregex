#!/bin/bash

log_file=$1

if [ -z "$log_file" ]; then
    echo "Log file not specified"
    exit 1
fi

if [ ! -e "$log_file" ]; then
    echo "Log file not found"
    exit 1
fi

grep -c "error" $log_file