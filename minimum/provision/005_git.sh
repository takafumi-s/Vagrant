#
# install
#
sudo yum install -y git git-daemon git-all

#
# config
#
git config --global user.name  "${USER_NAME}"
git config --global user.email "${USER_EMAIL}"

#
# clone
#
git clone https://github.com/takafumi-s/document.git ${GIT_DIR}/
