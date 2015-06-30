
@test "should output users and home foldes separated by comma" {
  local answer_number=$(grep -Eo '[0-9]*' <<< ${BATS_TEST_FILENAME})
  local code_output=$(/bin/bash /vagrant/answers/${answer_number}.sh)
  local expected="root,/root
daemon,/usr/sbin
bin,/bin
sys,/dev
sync,/bin
games,/usr/games
man,/var/cache/man
lp,/var/spool/lpd
mail,/var/mail
news,/var/spool/news
uucp,/var/spool/uucp
proxy,/bin
www-data,/var/www
backup,/var/backups
list,/var/list
irc,/var/run/ircd
gnats,/var/lib/gnats
nobody,/nonexistent
libuuid,/var/lib/libuuid
syslog,/home/syslog
messagebus,/var/run/dbus
landscape,/var/lib/landscape
sshd,/var/run/sshd
pollinate,/var/cache/pollinate
vagrant,/home/vagrant
statd,/var/lib/nfs
puppet,/var/lib/puppet
ubuntu,/home/ubuntu
tome,/home/tome
gabriel,/users/gabriel
maria,/home/maria
claudia,/people/claudia
bibiana,/home/bibiana"
  diff <(echo "$code_output") <(echo "$expected")
  [ "$code_output" = "$expected" ]
}
