#!/bin/bash

install_go() {
  mkdir tmp

  local GO_VERSION=$(curl https://go.dev/dl/?mode=json | jq '.[0].version' | tr -d '"')
  local TAR_FILE_NAME=${GO_VERSION}.linux-amd64.tar.gz
  local TAR_FILE_PATH=tmp/${TAR_FILE_NAME}

  curl -o ${TAR_FILE_PATH} https://go.dev/dl/${TAR_FILE_NAME}
  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${TAR_FILE_PATH}
  echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
}

install_go
