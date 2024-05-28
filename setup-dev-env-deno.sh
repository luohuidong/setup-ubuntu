#!/bin/bash

curl -fsSL https://deno.land/install.sh | sh

cat <<'EOF' >> ~/.bashrc

# deno
export DENO_INSTALL=$HOME/.deno
export PATH=$DENO_INSTALL/bin:$PATH
# deno end

EOF
