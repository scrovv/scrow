#!/bin/bash

# Set variables
DISTRO="ubuntu-jammy"
WSL_DISTRO="ubuntu-jammy"

# Install dependencies
sudo apt update && sudo apt install -y \
  curl wget git build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev \
  wget git python-pip python3-pip

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo bash -
sudo apt install nodejs
echo "Node.js installed"

# Install Conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
export PATH="/opt/conda/bin:$PATH"
echo "Conda installed"

# Install Docker
sudo apt install ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io
echo "Docker installed"

# Configure Docker
sudo usermod -aG docker $USER
newgroup --force 1001
echo "Docker group created"

# Install WSL extension for Docker
sudo apt-get install -y wsl2
sudo apt-get install -y wsl2-tools
sudo apt-get install -y wsl2-dev

# Enable WSL2
sudo wsl --install

# Configure WSL to use the new distribution
wsl --set-version $WSL_DISTRO $DISTRO

echo "Installation complete!"
