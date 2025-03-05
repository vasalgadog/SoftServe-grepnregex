#!/bin/bash

log_dir=$1

if [ -z "$log_dir" ]; then
    echo "Log directory not specified"
    exit 1
fi

if [ ! -e "$log_dir" ]; then
    echo "Log directory not found"
    exit 1
fi

grep -r "warning" "$log_dir"/*.log