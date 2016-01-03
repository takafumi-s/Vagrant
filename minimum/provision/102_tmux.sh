#
# install
#
sudo yum install -y tmux

#
# .tmux.conf
#
cp ${GIT_DIR}/document/tmux/.tmux.conf ~/
sudo cp ${GIT_DIR}/document/tmux/.tmux.conf /root/
