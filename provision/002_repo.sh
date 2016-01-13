#
# install epel repo
#
yum install -y epel-release
cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.ORI
cp ${FILE_DIR}/etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo
