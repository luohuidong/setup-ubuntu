#!/bin/bash

source ./variables.sh

install_go() {

	local GO_VERSION=$(curl https://go.dev/dl/?mode=json | jq '.[0].version' | tr -d '"')

	printf "${LIGHT_GREEN}Installing Go version ${GO_VERSION}...${NC}\n"

	local TAR_FILE_NAME=${GO_VERSION}.linux-amd64.tar.gz

	rm -rf ${TAR_FILE_NAME}
	wget https://go.dev/dl/${TAR_FILE_NAME}
	sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${TAR_FILE_NAME}

	export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

	# Add go to PATH
	cat <<'EOF' >>~/.bashrc
# go
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
# go end

EOF
}

printf "${LIGHT_GREEN}Installing Go...${NC}\n"
sudo apt install jq
install_go
printf "${LIGHT_GREEN}Go has been installed successfully!${NC}\n"
