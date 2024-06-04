#!/bin/bash

source ./variables.sh

sudo apt install git
sudo apt install tmux

printf "${LIGHT_GREEN}Installing build-essential...${NC}\n"
sudo apt install build-essential
printf "${LIGHT_GREEN}build-essential has been installed successfully!${NC}\n"

# Setup NVM and install Node.js
source ./setup-dev-env-nvm.sh

# Install Deno
source ./setup-dev-env-deno.sh

# Install Bun
printf "${LIGHT_GREEN}Installing Bun...${NC}\n"
curl -fsSL https://bun.sh/install | bash
printf "${LIGHT_GREEN}Bun has been installed successfully!${NC}\n"

# Install Pnpm
printf "${LIGHT_GREEN}Installing Pnpm...${NC}\n"
curl -fsSL https://get.pnpm.io/install.sh | sh -
printf "${LIGHT_GREEN}Pnpm has been installed successfully!${NC}\n"

# Install Rust
printf "${LIGHT_GREEN}Installing Rust...${NC}\n"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
printf "${LIGHT_GREEN}Rust has been installed successfully!${NC}\n"

# Install Go
source ./setup-dev-env-go.sh
