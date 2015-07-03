apt-get update
apt-get install -y git bash vim curl tree unzip ruby-dev g++
sudo gem install daemons -v '1.2.3'

if [[ -z "$(which bats)" ]]; then
  wget -q https://github.com/sstephenson/bats/archive/master.zip
  unzip master
  cd bats-master
  sudo ./install.sh /usr/local
fi

bash /vagrant/scenarios/001.sh
bash /vagrant/scenarios/002.sh
bash -x /vagrant/scenarios/003.sh
