#!/bin/bash
# Pull the actual image so it is saved locally
# docker pull ghcr.io/gold-rush-robotics/dev_env:5
mkdir -p ~/docker/vscode
echo "Display to use: $DISPLAY"

# add DEVENV_HOST_PATH to user shell profile if not already present

# Declare DEVENV_HOST_PATH environment variable

DEVENV_HOST_PATH=$(pwd)

#check what shell is being used
SHELL_NAME=$(basename "$SHELL")
if [ "$SHELL_NAME" = "bash" ]; then
    PROFILE_FILE="$HOME/.bashrc"

elif [ "$SHELL_NAME" = "zsh" ]; then
    PROFILE_FILE="$HOME/.zshrc"

else
    echo "Unsupported shell: $SHELL_NAME"
    exit 1

fi

if ! grep -q "export DEVENV_HOST_PATH=" "$PROFILE_FILE"; then
    echo "Adding DEVENV_HOST_PATH to $PROFILE_FILE"
    echo "export DEVENV_HOST_PATH="$DEVENV_HOST_PATH"" >> "$PROFILE_FILE"
else
    echo "DEVENV_HOST_PATH already set in $PROFILE_FILE"
fi
