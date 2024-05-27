#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install curl vim htop
# Install Rime Input Method
sudo apt install ibus-rime

# Install development environment
source ./setup-dev-env.sh

# Install Docker Engine
source ./setup-docker-engine.sh
