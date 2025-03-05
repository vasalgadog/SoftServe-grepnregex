#!/bin/bash

user=$1

if [ -z "$user" ]; then
    echo "User not specified"
    exit 1
fi

ps aux | grep -E "^$user\+?" | grep -v "grep"

# it fails if the username is large than 7 characters