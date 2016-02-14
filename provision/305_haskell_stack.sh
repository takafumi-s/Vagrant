#
# Haskell Stack install
#

# install
curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/centos/7/fpco.repo | tee /etc/yum.repos.d/fpco.repo
yum -y install stack

# global project setting
su - vagrant -c "stack setup"

# global module
su - vagrant -c "stack install hlint"
su - vagrant -c "stack install stylish-haskell"
su - vagrant -c "stack install ghc-mod"
