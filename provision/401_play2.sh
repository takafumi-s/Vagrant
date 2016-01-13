cd /usr/local/src
url='https://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7-minimal.zip'
filename=`basename $url .zip`
unzip_filename=`echo $filename | sed -e 's/typesafe-//g'`

wget $url

unzip ${filename}.zip
chmod +x ${unzip_filename}/activator

cd /usr/local/bin
ln -s ../src/${unzip_filename}/activator .
