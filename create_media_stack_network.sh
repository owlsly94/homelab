#!/bin/bash

# Name of the network
NETWORK_NAME="media-stack-network"

# Checking if network is already created
if docker network ls | grep -q "$NETWORK_NAME"; then
  echo "Network '$NETWORK_NAME' is already there."
else
  echo "Creating network '$NETWORK_NAME'..."
  docker network create \
    --driver=bridge \
    --subnet=172.18.0.0/16 \
    "$NETWORK_NAME"

  if [ $? -eq 0 ]; then
    echo "Network '$NETWORK_NAME' successfully created."
  else
    echo "There has been an error creating network '$NETWORK_NAME'."
    exit 1
  fi
fi
