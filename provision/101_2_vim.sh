###
### exモードコマンドを打つと、それ以後のコマンドが実行されない。
### とりあえず対策不明なので、以下を別ファイルにする。
###

#
# colorscheme
#
ln -s ../bundle/vim-hybrid/colors/hybrid.vim /root/.vim/colors/
ln -s ../bundle/Wombat/colors/wombat.vim     /root/.vim/colors/

#
# scala
#
git clone git@github.com:scala/scala-tool-support.git /root/.vim/git/scala-tool-support
cd /root/.vim
ln -s ../git/scala-tool-support/tool-support/vim/ftdetect/scala.vim /root/.vim/ftdetect/
ln -s ../git/scala-tool-support/tool-support/vim/indent/scala.vim   /root/.vim/indent/
ln -s ../git/scala-tool-support/tool-support/vim/plugin/scala.vim   /root/.vim/plugin/
ln -s ../git/scala-tool-support/tool-support/vim/syntax/scala.vim   /root/.vim/syntax/

#
# root
#
cp -r /root/.vim ${HOME_DIR}/
cp /root/.vimrc ${HOME_DIR}/

chown vagrant:vagrant ${HOME_DIR}/.vimrc
chown vagrant:vagrant -R ${HOME_DIR}/.vim
