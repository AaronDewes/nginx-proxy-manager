#!/usr/bin/env bash
set -euo pipefail


cd "$(dirname $(readlink -f "${BASH_SOURCE[0]}"))"

if [[ $UID != 0 ]]; then
    echo "The server must be stopped as root"
    exit 1
fi


docker-compose down

