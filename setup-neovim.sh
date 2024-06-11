#!/bin/bash

#Install FUSE
download_fuse() {
	sudo add-apt-repository universe
	sudo apt install libfuse2
}

download_neovim() {
	local TOOLS_PATH=${HOME}/tools

	mkdir ${TOOLS_PATH}
	wget -P ${TOOLS_PATH} https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
	chmod u+x ${TOOLS_PATH}/nvim.appimage
	ln -s ${TOOLS_PATH}/nvim.appimage ${TOOLS_PATH}/nvim

	# Add nvim to PATH
	cat <<'EOF' >>~/.bashrc
# neovim
export PATH=$HOME/tools:$PATH
# neovim end

EOF
}

download_neovim_config() {
	local CURRENT_PATH=$(pwd)
	cd ~/.config
	git clone https://github.com/luohuidong/nvim.git
	cd ${CURRENT_PATH}
}

setup_neovim() {
	download_fuse
	download_neovim
	download_neovim_config
}

setup_neovim
