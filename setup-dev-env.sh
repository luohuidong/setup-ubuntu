#!/bin/bash

sudo apt install git
sudo apt install tmux

sudo apt install build-essential

# Setup NVM and install Node.js
source ./setup-dev-env-nvm.sh

# Install Deno
source ./setup-dev-env-deno.sh

# Install Bun
curl -fsSL https://bun.sh/install | bash

# Install Pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Go
source ./setup-dev-env-go.sh
