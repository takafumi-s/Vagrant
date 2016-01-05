#
# install
#
sudo yum install -y httpd httpd-devel

#
# module install
#
sudo yum install -y bzip2-devel
sudo yum install -y libxml2-devel
sudo yum install -y libxslt-devel

#
# apxs setting
#
sudo chmod -R oga+rw /usr/lib64/httpd/modules
sudo chmod -R oga+rw /etc/httpd/conf
