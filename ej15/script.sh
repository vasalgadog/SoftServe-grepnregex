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

grep -E "(\s|^)(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\s|:|$)" $file | awk '{for (i=1; i<=NF; i++) if ($i ~ /[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/) print $i}'

#try with /var/log/syslog /var/log/messages /var/log/auth.log /var/log/secure
#regex improved and doesn't show the packages version who match with this