apt-get update
apt-get install -y git bash vim curl tree unzip

if [[ -z "$(which bats)" ]]; then
  wget -q https://github.com/sstephenson/bats/archive/master.zip
  unzip master
  cd bats-master
  sudo ./install.sh /usr/local
fi

bash -x /vagrant/scenarios/001.sh
