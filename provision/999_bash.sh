#!/bin/bash

#
# bashrc, bash_profile
#
\cp ${FILE_DIR}/home/vagrant/.bashrc       /root/
\cp ${FILE_DIR}/home/vagrant/.bash_profile /root/
\cp /root/.bashrc       ${HOME_DIR}/
\cp /root/.bash_profile ${HOME_DIR}/

chown vagrant:vagrant ${HOME_DIR}/.bashrc
chown vagrant:vagrant ${HOME_DIR}/.bash_profile
