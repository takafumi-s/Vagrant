#!/bin/bash

#
# .ssh
#

function setSsh() {
  mkdir -p /root/.ssh
  mkdir -p ${HOME_DIR}/.ssh

  SSH_DIR=${ROOT_DIR}/.ssh
  for f in `ls -1 ${SSH_DIR}/private/*`; do
    \cp -r $f /root/.ssh/
  done

  for f in `ls -1 ${SSH_DIR}/public/*`; do
    cat $f >> /root/.ssh/authorized_keys
  done

  chmod 700 /root/.ssh ${HOME_DIR}/.ssh
  chmod 600 /root/.ssh/* ${HOME_DIR}/.ssh/*

  \cp -r /root/.ssh ${HOME_DIR}/

  chown -R vagrant:vagrant ${HOME_DIR}/.ssh
}

