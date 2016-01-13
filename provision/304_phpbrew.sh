yum install -y php-cli

cd /usr/local/bin
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

su - vagrant -c "phpbrew init"
su - vagrant -c "phpbrew install 7.0.1  +pdo +mysql +apxs2=/usr/bin/apxs"

su - vagrant -c ". ~/.phpbrew/bashrc

su - vagrant -c "phpbrew switch 7.0.1"
