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
# neocomplete
#
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
