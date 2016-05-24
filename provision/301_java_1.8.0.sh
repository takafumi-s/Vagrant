#
# rpm
# version 8 Update91 
#
RPM_URL='http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.rpm'
RPM_FILE='jre-8u91-linux-x64x.rpm'

wget $RPM_URL -O "${RPM_DIR}/${RPM_FILE}"

#
# install
#
rpm -ivh "${RPM_DIR}/${RPM_FILE}"

#
# devel
#
yum install -y java-1.8.0-openjdk-devel
