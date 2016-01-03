#
# output error log 
#
function errorLog() {
  error_log=`ls ${LOG_DIR}/error.*.log`
  echo "Error) Please deal with the error. And delete the log : \"${error_log}\" "
}
