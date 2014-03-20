#!/bin/sh

if type -p chef-solo > /dev/null; then
  echo "Using chef-solo at `which chef-solo`"
else
  apt-get install -y ruby1.9.3 ruby-dev libopenssl-ruby rdoc ri irb build-essential wget ssl-cert curl rubygems1.2.0
  gem install chef --version='11.4.2' --no-ri --no-rdoc
fi
