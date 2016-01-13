#
# rpm
# version 8 Update 66
#
RPM_URL='http://javadl.sun.com/webapps/download/AutoDL?BundleId=111740'
RPM_FILE='jre-8u66-linux-x64x.rpm'

wget $RPM_URL -O "${RPM_DIR}/${RPM_FILE}"

#
# install
#
rpm -ivh "${RPM_DIR}/${RPM_FILE}"

#
# devel
#
yum instal -y java-1.8.0-openjdk-devel
