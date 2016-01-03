#
# time zone
#
sudo timedatectl set-timezone Asia/Tokyo 

sudo timedatectl

#
# chrony
#
sudo yum -y install chrony
sudo systemctl start chronyd.service

sudo cp -a /etc/chrony.conf /etc/chrony.conf.ORI
sudo cp "${FILE_DIR}/etc/chrony.conf" /etc/chrony.conf

# restart service
sudo systemctl restart chronyd.service
# auto start
sudo systemctl enable chronyd.service
# status
sudo systemctl status chronyd.service
