#
# time zone
#
timedatectl set-timezone Asia/Tokyo 

timedatectl

#
# chrony
#
yum -y install chrony
systemctl start chronyd.service

cp -a /etc/chrony.conf /etc/chrony.conf.ORI
cp "${FILE_DIR}/etc/chrony.conf" /etc/chrony.conf

# restart service
systemctl restart chronyd.service
# auto start
systemctl enable chronyd.service
# status
systemctl status chronyd.service
