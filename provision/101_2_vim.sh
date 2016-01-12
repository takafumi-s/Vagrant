###
### exモードコマンドを打つと、それ以後のコマンドが実行されない。
### とりあえず対策不明なので、以下を別ファイルにする。
###

#
# root
#
sudo cp -r /root/.vim ${HOME_DIR}/
sudo cp /root/.vimrc ${HOME_DIR}/

sudo chmod vagrant:vagrant ${HOME_DIR}/.vimrc
sudo chmod vagrant:vagrant -R ${HOME_DIR}/.vim
