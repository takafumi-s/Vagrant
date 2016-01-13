#
# install
#
yum install -y tmux

#
# .tmux.conf
#
cp ${GIT_DIR}/tmux/.tmux.conf /root/

#
# root
#
cp /root/.tmux.conf ${HOME_DIR}/
chown vagrant:vagrant ${HOME_DIR}/.tmux.conf
