#
# install module
#
yum install -y mercurial
yum install -y ncurses-devel
yum install -y lua lua-devel

#
# make install
#
cd /usr/local/src
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure \
  --with-features=huge \
  --enable-multibyte \
  --enable-luainterp=dynamic \
  --enable-gpm \
  --enable-cscope \
  --enable-fontset
make
make install

#
# setting
#
mkdir -p /root/.vim/{colors,dict,ftdetect,indent,plugin,syntax,git}
cp ${GIT_DIR}/vim/.vimrc /root/.vimrc

#
# neocomplete
#
mkdir -p /root/.vim/bundle/neobundle
git clone https://github.com/Shougo/neobundle.vim /root/.vim/bundle/neobundle.vim
/usr/local/bin/vim -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e; echo
# /usr/local/bin/vim +":NeoBundleInstall!" +:q! ; echo;
