#
# install
#
yum install -y httpd httpd-devel

#
# module install
#
yum install -y bzip2-devel
yum install -y libxml2-devel
yum install -y libxslt-devel

#
# apxs setting
#
chmod -R oga+rw /usr/lib64/httpd/modules
chmod -R oga+rw /etc/httpd/conf
