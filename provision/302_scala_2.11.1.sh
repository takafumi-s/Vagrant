#
# rpm
# scala 2.11.1
#
RPM_URL='http://downloads.typesafe.com/scala/2.11.1/scala-2.11.1.rpm'
RPM_FILE='scala-2.11.1.rpm'

sudo wget $RPM_URL -O "${RPM_DIR}/${RPM_FILE}"

#
# install
#
sudo rpm -ivh "${RPM_DIR}/${RPM_FILE}"

