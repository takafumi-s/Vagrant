#
# afterMsg 
#
function afterMsg() {

  msg=$(cat << EOS
At the end, please do the following process.\n
\n
    > git config --global user.name  "<Name>"\n
    > git config --global user.email "<Email>"\n
\n
EOS
)
  echo -e $msg
}
