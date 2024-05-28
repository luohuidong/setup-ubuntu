#!/bin/bash

sudo apt install git
sudo apt install tmux

sudo apt install build-essential

# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash # install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts

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
