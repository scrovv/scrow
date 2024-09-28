#!/bin/bash

# Update package list and upgrade packages
sudo apt update && sudo apt full-upgrade -y

# Install necessary tools and software
sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    zip \
    tar \
    vim \
    nano \
    htop \
    tmux \
    screen \
    nmap \
    netcat \
    python3-pip \
    python3-dev

# Install a code editor (e.g. Visual Studio Code)
sudo apt install -y vscode

# Set up the shell environment
export EDITOR=vim
export VISUAL=vim
export PAGER=less

# Create a directory for personal files and set it as the user's home directory
mkdir -p ~/personal
echo "mkdir -p ~/personal" | sudo tee -a /etc/passwd
usermod -d ~/personal -m username

# Set up the system to use a portable configuration file
mkdir -p ~/.config
