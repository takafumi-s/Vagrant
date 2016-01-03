#
# execute result message
#
function resultMsg() {
  script=$1
  status=$2

  script_name=`basename $script .sh`

  [ $status -eq $STATUS_OK ]      && echo "${script}.sh) Execute complete."
  [ $status -eq $STATUS_ERROR ]   && echo "${script}.sh) Execute error. Show log : ${LOG_DIR}/error.${script_name}.log"
  [ $status -eq $STATUS_ALREADY ] && echo "${script}.sh) Already done. Skip..."
}
