#!/bin/bash

source $(dirname $0)/../common/variables.sh
source $(dirname $0)/user.sh
source $(dirname $0)/sshd.sh

configure_user
run_sshd

/bin/bash
