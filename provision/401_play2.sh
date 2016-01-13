cd /usr/local/src
url=https://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7-minimal.zip
wget $url

filename=`basename $url`
unzip ${filename}.zip
chmod +x ${filename}/activator

cd /usr/local/bin
ln -s ../src/${filename}/activator .
