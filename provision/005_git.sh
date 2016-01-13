#
# install
#
yum install -y git git-daemon git-all

#
# config
#
git config --global push.default simple
git config --global user.name $GIT_USER
git config --global user.email $GIT_EMAIL

#
# clone
#
git clone https://github.com/takafumi-s/document.git ${GIT_DIR}
