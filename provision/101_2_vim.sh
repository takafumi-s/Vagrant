###
### exモードコマンドを打つと、それ以後のコマンドが実行されない。
### とりあえず対策不明なので、以下を別ファイルにする。
###

#
# root
#
cp -r /root/.vim ${HOME_DIR}/
cp /root/.vimrc ${HOME_DIR}/

chown vagrant:vagrant ${HOME_DIR}/.vimrc
chown vagrant:vagrant -R ${HOME_DIR}/.vim
