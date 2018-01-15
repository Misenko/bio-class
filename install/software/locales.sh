#!/bin/bash

function install_locales {
  apt-get install -y locales
}

function configure_locales {
  rm -rf /var/lib/apt/lists/
  localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
}
