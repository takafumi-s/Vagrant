#
# afterMsg
#
function afterMsg() {

  msg=$(cat << EOS
At the end, please do the following process.\n
\n
\n
EOS
)
  echo -e $msg
}
