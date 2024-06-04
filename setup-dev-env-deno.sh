#!/bin/bash

source ./variables.sh

printf "${LIGHT_GREEN}Installing Deno...${NC}\n"

curl -fsSL https://deno.land/install.sh | sh

# Add deno to PATH
cat <<'EOF' >>~/.bashrc
# deno
export DENO_INSTALL=$HOME/.deno
export PATH=$DENO_INSTALL/bin:$PATH
# deno end

EOF

printf "${LIGHT_GREEN}Deno has been installed successfully!${NC}\n"
