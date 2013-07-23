#
# Cookbook Name:: default_build
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(
  ulimit
  ohai
  create-users
  git
  motd-tail
  build-essential
  default-build::misc
  chef-client::cron
).each do |r|
  include_recipe r
end

