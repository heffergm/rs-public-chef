#
# Cookbook Name:: default_build
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(sysstat postfix ntp).each do |p|
  package p do
    action :install
  end
end

# logrotate
template '/etc/logrotate.d/chef-client' do
  source 'chef-client-logrotate.erb'
  mode 0644
  owner 'root'
  group 'root'
end

