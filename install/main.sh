#!/bin/bash

source $(dirname $0)/../common/variables.sh

source $(dirname $0)/software/sources.sh
source $(dirname $0)/software/locales.sh
source $(dirname $0)/software/timezone.sh
source $(dirname $0)/software/sshd.sh
source $(dirname $0)/software/utils.sh

source $(dirname $0)/environment/user.sh
source $(dirname $0)/environment/install-dir.sh

update_sources
install_locales
configure_locales
update_sources
install_timezone
configure_timezone
install_sshd
configure_sshd
install_utils

create_user
make_install_dir
