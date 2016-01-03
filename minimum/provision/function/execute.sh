#
# execute script
#
function execute() {
  script_name=$1
  script=${PROVISION_DIR}/${script_name}.sh
  log=${LOG_DIR}/${script_name}.log
  error_log=${LOG_DIR}/error.${script_name}.log

  line_num=0

  # check already done
  if [ ! -s $log ]; then
    while read line; do
      line_num=$(($line_num + 1))

      command "${line}" ${line_num} "${log}"

      # check error
      if [ $? -ne 0 ] ; then
        mv $log $error_log
        return $STATUS_ERROR 
      fi
    done < $script

    return $STATUS_OK 
  fi

  return $STATUS_ALREADY
}

#
# execute command
#
function command() {
  line=$1
  line_num=$2
  log=$3

  isCommand "${line}" 
  [ $? -ne 0 ] && return 0

  echo -e "\n\n"\#${line_num}: ${line} >> $log
  eval $line >> $log 2>&1
}

#
# check is command
#
function isCommand() {
  line=$1

  isComment=`echo $line | grep -P '^[\s\t]*#.*$'`
  isSpace=`echo $line | grep -P '^[\s\t]*$'`
  
  if [ -n "${isComment}" ] || [ -n "${isSpace}" ] || [ -z "${line}" ] ; then
    return 1
  fi

  return 0
}
