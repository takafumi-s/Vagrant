#
# TarBall v5.3.0
#
TARBALL_URL='https://nodejs.org/dist/v5.3.0/node-v5.3.0-linux-x64.tar.gz'
TARBALL_FILE=`basename ${TARBALL_URL}`
TARBALL_FILE_NAME=`basename ${TARBALL_URL} .tar.gz`

sudo wget $TARBALL_URL -O "${TARBALL_DIR}/${TARBALL_FILE}"

#
# SimLink
#
sudo tar xvf "${TARBALL_DIR}/${TARBALL_FILE}" -C "${TARBALL_DIR}/"
sudo ln -s "${TARBALL_DIR}/${TARBALL_FILE_NAME}/bin/node" /usr/local/bin/
