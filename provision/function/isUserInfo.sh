#
# input check
#
function isUserInfo() {
  if [ "${GIT_USER}" != "${DEFAULT_USER}" ] \
     && [ "${GIT_EMAIL}" != "${DEFAULT_EMAIL}" ]
  then
    return $STATUS_OK
  fi

  return $STATUS_ERROR
}
