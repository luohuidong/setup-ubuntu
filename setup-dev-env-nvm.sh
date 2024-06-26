#!/bin/bash

source ./variables.sh

printf "${LIGHT_GREEN}Installing NVM...${NC}\n"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash # install nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

nvm install --lts

printf "${LIGHT_GREEN}NVM has been installed successfully!${NC}\n"
