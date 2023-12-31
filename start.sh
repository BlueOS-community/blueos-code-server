#!/bin/bash

# turn on bash's job control
set -m

echo "Starting nginx.."
sudo nginx &
echo "Starting openvscode-server.."
/home/.openvscode-server/bin/openvscode-server \
  --port 88 \
   --start-server \
    --without-connection-token \
     --host 0.0.0.0 \
     --telemetry-level off \
     --server-data-dir /openvscode \
     --extensions-dir /openvscode \
     --user-data-dir /openvscode