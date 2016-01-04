#
# error check
#
function isErrorLog() {
  if [ -e ${LOG_DIR}/error.*.log ]; then
    return $STATUS_ERROR
  fi
  return $STATUS_OK 
}
