yum install -y php-cli
yum install -y --enablerepo=epel libmcrypt libmcrypt-devel
yum install -y readline readline-devel

cd /usr/local/bin
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

su - vagrant -c "phpbrew init"
su - vagrant -c "phpbrew install 7.0.1  +default +apxs2=/usr/bin/apxs +openssl=/usr -- --with-libdir=lib64"
