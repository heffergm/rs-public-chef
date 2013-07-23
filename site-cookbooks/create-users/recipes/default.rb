#
# Cookbook Name:: create-users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# users for all envs
user_account 'root' do
  manage_home "false"
  home "/root"
  ssh_keys  [ 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDrBXZ0xD46wbp+K1KavdV+E7foGgWLPxGgyLPpKgd729i5C9coG+bwV0yJcjIfC6aOiZw4+QhUexAfQOXEVEjyGgkEwFLTApqX+3OMtfV2JYx+eAqKHfa7LFLL79maM/vfr0BJa8cVUfL0nJRRwdH1bTByuw1Iopk97rHk880d/HzxLOEUuET6OYhSjPJz+DaSgfdc/nKaMAFXWzHTtc8O7B+MEg83+G0rWbycQTQ0ytjfTbGXb8J34aVdXnLmRLpN8e+ML7InzZGAIfAcDyo4ngwQivKAHfVi20PHZ/X6OMPxhZWBjL/RZXjgtSuyGrlIbXe84AEGKbbawHVWuPbP gran6556@grants-rack' ]
end

