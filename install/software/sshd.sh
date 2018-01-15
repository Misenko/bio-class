#!/bin/bash

function install_sshd {
  apt-get install -y openssh-server openssh-client
}

function configure_sshd {
  files="sshd_config ssh_config"
  for file in ${files}; do
    cp ${CONF_DIR}/${file} /etc/ssh/${file}
  done

  mkdir -p /var/run/sshd
}
