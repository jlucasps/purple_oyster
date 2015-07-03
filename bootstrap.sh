apt-get update
apt-get install -y git bash vim curl tree unzip ruby-dev

if [[ -z "$(which bats)" ]]; then
  wget -q https://github.com/sstephenson/bats/archive/master.zip
  unzip master
  cd bats-master
  sudo ./install.sh /usr/local
fi

bash /vagrant/scenarios/001.sh
bash /vagrant/scenarios/002.sh
bash /vagrant/scenarios/003.sh

cd /vagrant/web/
gem install bundler
bundle install
ruby /vagrant/web/init.rb -o 0.0.0.0 &
