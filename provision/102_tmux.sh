#
# yum
#
yum install -y libevent-devel

#
# install
#
url='https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz'
file=`basename $url`
file_name=`basename $url .tar.gz`

cd /usr/local/src

wget $url
tar xzvf $file
cd $file_name

./configure --prefix=/usr/local/lib/${file_name}
make
make install

cd /usr/local/bin
ln -s /usr/local/lib/${file_name}/bin/tmux /usr/local/bin/


#
# .tmux.conf
#
cp ${GIT_DIR}/tmux/.tmux.conf /root/

#
# root
#
cp /root/.tmux.conf ${HOME_DIR}/
chown vagrant:vagrant ${HOME_DIR}/.tmux.conf
