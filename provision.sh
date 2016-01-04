echo 'Start Provisioning...'

#
# define dir constant
#
ROOT_DIR=/vagrant

PROVISION_DIR=${ROOT_DIR}/provision
COMPLETED_DIR=${PROVISION_DIR}/completed
CONST_DIR=${PROVISION_DIR}/const
FILE_DIR=${PROVISION_DIR}/file
FUNCTION_DIR=${PROVISION_DIR}/function
GIT_DIR=${PROVISION_DIR}/git
LOG_DIR=${PROVISION_DIR}/log

#
# mkdir
#
mkdir -p $COMPLETED_DIR
mkdir -p $GIT_DIR
mkdir -p $LOG_DIR

#
# include constant
#
for file in `ls -1 ${CONST_DIR}/*.sh`; do
  . $file
done

#
# include funciton
#
for file in `ls -1 ${FUNCTION_DIR}/*.sh`; do
  . $file
done

#
# trap error
#
trap "echo Error" 15

#
# check exist error log
#
isErrorLog
if [ $? -ne 0 ]; then
  echo `errorLog`
  exit 15
fi

#
# execute provision 
#
scripts=`ls -1 ${PROVISION_DIR}/*.sh 2> /dev/null`
if [ $? -eq 0 ]; then
  for script in ${scripts[@]}; do
    script_name=`basename ${script} .sh`

    echo -e "\nexecute ${script}"

    execute $script_name
    status=$?
    echo `resultMsg $script $status`

    [ $status -eq $STATUS_OK ]    && mv $script ${COMPLETED_DIR}/${script_name}.sh
    [ $status -eq $STATUS_ERROR ] && exit 15
  done
fi

#
# after process message
#
afterMsg

echo -e "\nProvisioning Finish!"