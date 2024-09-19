#!/bin/bash
# Pull the actual image so it is saved locally
docker pull ghcr.io/gold-rush-robotics/dev_env:latest

# Create the directory where isaac sim will save to.
mkdir -p ~/docker/isaac-sim
mkdir -p ~/docker/vscode
