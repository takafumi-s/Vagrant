#
# install
#
sudo yum install -y tmux

#
# .tmux.conf
#
sudo cp ${GIT_DIR}/tmux/.tmux.conf /root/

#
# root
#
sudo cp /root/.tmux.conf ${HOME_DIR}/
sudo chown vagrant:vagrant ${HOME_DIR}/.tmux.conf
