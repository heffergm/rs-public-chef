name             'default_build'
maintainer       'Broadstreet'
maintainer_email 'heffergm@gmail.com'
license          'All rights reserved'
description      'Installs/Configures default_build'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "default_build", "Default stuff"

%w(ulimit apt chef-client ohai git motd-tail build-essential).each do |p|
  depends p
end

%w(debian ubuntu centos redhat smartos).each do |os|
  supports os
end
