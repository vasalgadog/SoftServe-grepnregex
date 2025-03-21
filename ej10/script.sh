#!/bin/bash

user=$1

if [ -z "$user" ]; then
    echo "User not specified"
    exit 1
fi

# Fix > 7 characters on username
if [ ${#user} -gt 7 ]; then
    user="${user:0:7}+"
fi

ps aux | grep -E "^$user\+?" | grep -v "grep"