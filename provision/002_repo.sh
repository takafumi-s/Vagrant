#
# install epel repo
#
sudo yum install -y epel-release
sudo cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.ORI
sudo cp ${FILE_DIR}/etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo
