#!/bin/bash

function configure_user {
  if [ ! -d ${HOME_DIR} ]; then
    mkdir -p ${HOME_DIR}
    chown ${USERNAME}:${USERNAME} ${HOME_DIR}
  fi

  files=".bashrc .profile"
  for file in ${files}; do
    dest_path=${HOME_DIR}/${file}
    if [ ! -f ${dest_path} ]; then
      cp ${CONF_DIR}/${file} ${dest_path}
      chown ${USERNAME}:${USERNAME} ${dest_path}
    fi
  done
}
