#!/bin/bash
echo "source /opt/ros/jazzy/setup.zsh" | sudo tee -a ~/.zshrc > /dev/null
echo 'export ZSH="$HOME/.oh-my-zsh"' | sudo tee -a ~/.zshrc > /dev/null
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="eastwood"/' ~/.zshrc
echo "source /opt/ros/jazzy/setup.zsh" | sudo tee -a ~/.zshrc > /dev/null
echo "export ROS_DISTRO=jazzy" | sudo tee -a ~/.zshrc > /dev/null
echo "export RCUTILS_COLORIZED_OUTPUT=1" | sudo tee -a ~/.zshrc > /dev/null
echo 'complete -o nospace -o default -F _python_argcomplete "ros2"' | sudo tee -a ~/.zshrc > /dev/null
echo 'alias python="python3"' | sudo tee -a ~/.zshrc > /dev/null

