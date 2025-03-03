#!/bin/bash
set -e

if [[ "$1" = "serve" ]]; then
    shift 1
    torchserve --start --ts-config /opt/program/serve/config.properties --model-store /home/model-server/model-store
    # torchserve --model-store /home/model-server/model-store
else
    eval "$@"
fi

# prevent docker exit
tail -f /dev/null