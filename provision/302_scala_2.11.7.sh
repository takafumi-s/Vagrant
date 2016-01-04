#
# rpm
# scala 2.11.7
#
RPM_URL='http://downloads.typesafe.com/scala/2.11.7/scala-2.11.7.rpm'
RPM_FILE=`basename $RPM_URL`

sudo wget $RPM_URL -O "${RPM_DIR}/${RPM_FILE}"

#
# install
#
sudo rpm -ivh "${RPM_DIR}/${RPM_FILE}"

