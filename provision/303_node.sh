# Const
NODE_VER=6.2.0


# nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh

# node
nvm install $NODE_VER
nvm alias default $NODE_VER

cp -r /root/.nvm ${HOME_DIR}/

chown vagrant:vagrant -R ${HOME_DIR}/.nvm.

