
# The setup will execute the bash script located at answers/002.sh
setup () {
  answer_number=$(grep -Eo '[0-9]*' <<< ${BATS_TEST_FILENAME})
  answer_file="/vagrant/answers/${answer_number}.sh"
  bash -x  ${answer_file}  >&2
}

@test "should install sl package" {
  run dpkg-query -l sl
  [ "$status" -eq 0 ]
}
