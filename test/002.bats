answer=`$BATS_TEST_FILENAME | sed 's/test/answers/' | sed 's/.bats//'i`
echo $answer
#answer=$($BATS_TEST_FILENAME | sed 's/test/answers/' | sed 's/.bats//')
#echo ${answer}

#setup () {
#  answer=$($BATS_TEST_FILENAME | sed 's/test/answers/' | sed 's/.bats//')
#  bash -x  ${answer}.sh  >&2
#} 
#
#@test "should install sl package" {
#  run dpkg-query -l sl
#  [ "$status" -eq 0 ]
#}
