#
# install module
#
sudo yum install -y mercurial
sudo yum install -y ncurses-devel
sudo yum install -y lua lua-devel

#
# make install
#
cd /usr/local/src
sudo hg clone https://vim.googlecode.com/hg/ vim
cd vim
sudo ./configure \
  --with-features=huge \
  --enable-multibyte \
  --enable-luainterp=dynamic \
  --enable-gpm \
  --enable-cscope \
  --enable-fontset
sudo make
sudo make install

#
# setting
#
sudo cp ${GIT_DIR}/vim/.vimrc /root/.vimrc

sudo mkdir -p /root/.vim/colors
sudo wget "https://raw.githubusercontent.com/vim-scripts/Wombat/master/colors/wombat.vim" -O /root/.vim/colors/wombat.vim
sudo wget "https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim" -O /root/.vim/colors/hybrid.vim

#
# neocomplete
#
sudo mkdir -p /root/.vim/bundle/neobundle
sudo git clone https://github.com/Shougo/neobundle.vim /root/.vim/bundle/neobundle.vim
sudo /usr/local/bin/vim -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e; echo
# sudo /usr/local/bin/vim +":NeoBundleInstall!" +:q! ; echo;
