#
# install
#
sudo yum install -y tmux

#
# .tmux.conf
#
cp ${GIT_DIR}/tmux/.tmux.conf ~/
sudo cp ${GIT_DIR}/tmux/.tmux.conf /root/
