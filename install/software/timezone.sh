#!/bin/bash

function install_timezone {
  apt-get install -y tzdata
}

function configure_timezone {
  echo "tzdata tzdata/Areas select Europe" | debconf-set-selections
  echo "tzdata tzdata/Zones/Europe select Prague" | debconf-set-selections
  TIMEZONE="Europe/Prague"
  echo $TIMEZONE > /etc/timezone
  cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime
}
