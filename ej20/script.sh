#!/bin/bash

#!/bin/bash

filter=$1

if [ -z "$filter" ]; then
    echo "Filter (user or IP address) not specified"
    exit 1
fi

last | head -n 5 | grep -E "$filter"