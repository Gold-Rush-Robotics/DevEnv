#!/bin/bash
# Pull the actual image so it is saved locally
docker pull ghcr.io/gold-rush-robotics/dev_env:2
mkdir -p ~/docker/vscode
echo "Display to use: $DISPLAY"
