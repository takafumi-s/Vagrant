#
# install
#
yum install -y git git-daemon git-all

#
# config
#
echo ${GIT_USER}
ls -ld ~
sudo git config --global push.default simple
sudo git config --global user.name "${GIT_USER}"
sudo git config --global user.email "${GIT_EMAIL}"

#
# clone
#
git clone https://github.com/takafumi-s/document.git ${GIT_DIR}

#
# copy
#
sudo cp /root/.gitconfig ${HOME_DIR}/.gitconfig
chown vagrant:vagrant ${HOME_DIR}/.gitconfig
