
@test "should list all directories inside the dir /opt/resources" {
  local answer_number=$(grep -Eo '[0-9]*' <<< ${BATS_TEST_FILENAME})
  local code_output=$(/bin/bash /vagrant/answers/${answer_number}.sh)
  local expected="/opt/resources/black
/opt/resources/natural
/opt/resources/plant
/opt/resources/splitter
/opt/resources/zulu"
  diff <(echo "$code_output") <(echo "$expected")
  [ "$code_output" = "$expected" ]
}
