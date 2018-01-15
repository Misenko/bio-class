#!/bin/bash

function run_sshd {
  /usr/sbin/sshd -D &
}
