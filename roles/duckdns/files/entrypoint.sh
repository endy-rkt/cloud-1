#!/bin/bash

set -e

if [ -f /run/secrets/duckdns_token ]; then
    export TOKEN="$(cat /run/secrets/duckdns_token)"
else
    echo "ERROR: /run/secrets/duckdns_token not found"
    exit 1
fi

exec /init
