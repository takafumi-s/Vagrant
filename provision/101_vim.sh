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
cp -a ${GIT_DIR}/document/vim/.vimrc ~/.vimrc

mkdir -p ~/.vim/colors
wget "http://www.vim.org/scripts/download_script.php?src_id=6657" -O ~/.vim/colors/wombat.vim
wget "https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid-light.vim" -O ~/.vim/colors/hybrid-light.vim
wget "https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim" -O ~/.vim/colors/hybrid.vim

#
# neocomplete
#
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +":NeoBundleInstall" +:q

#
# root
#
sudo cp -r ~/.vim /root/
sudo cp ~/.vimrc /root/
