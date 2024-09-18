#!/bin/bash
# Pull the actual image so it is saved locally
docker pull ghcr.io/roboeagles4828/developer-environment:8
mkdir -p ~/docker/vscode
echo "Display to use: $DISPLAY"
