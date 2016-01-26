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
cp ${GIT_DIR}/vim/.vimrc /root/.vimrc

mkdir -p /root/.vim/colors
wget "https://raw.githubusercontent.com/vim-scripts/Wombat/master/colors/wombat.vim" -O /root/.vim/colors/wombat.vim
wget "https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim" -O /root/.vim/colors/hybrid.vim

#
# scala syntax
#
cd /tmp
git clone git@github.com:scala/scala-tool-support.git
cd scala-tool-support/tool-support/vim
cp ftdetect indent plugin syntax /root/.vim/
rm -rf /tmp/scala-tool-support

#
# neocomplete
#
mkdir -p /root/.vim/bundle/neobundle
git clone https://github.com/Shougo/neobundle.vim /root/.vim/bundle/neobundle.vim
/usr/local/bin/vim -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e; echo
# /usr/local/bin/vim +":NeoBundleInstall!" +:q! ; echo;
