#!/usr/bin/env bash

if type -p chef-solo > /dev/null; then
  echo "Using chef-solo at `which chef-solo`"
else
  apt-get install -y ruby1.9.3 ruby-dev libopenssl-ruby rdoc ri irb build-essential wget ssl-cert curl rubygems
  gem install net-ssh -v 2.2.2 --no-ri --no-rdoc
  gem install net-ssh-gateway -v 1.1.0 --no-ri --no-rdoc --ignore-dependencies
  gem install net-ssh-multi -v 1.1.0 --no-ri --no-rdoc --ignore-dependencies
  gem install mime-types -v 1.21 --no-ri --no-rdoc
  gem install chef --version='11.4.2' --no-ri --no-rdoc
fi
