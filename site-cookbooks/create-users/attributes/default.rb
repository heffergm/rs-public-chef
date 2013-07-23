case platform
when 'debian','ubuntu','redhat','centos','amazon','scientific','fedora','freebsd','suse'
  default['user']['home_root']     = "/home"
  default['user']['default_shell'] = "/bin/bash"
  when 'openbsd'
  default['user']['home_root']      = "/home"
  default['user']['default_shell']  = "/bin/ksh"
when 'mac_os_x', 'mac_os_x_server'
  default['user']['home_root']      = "/Users"
  default['user']['default_shell']  = "/bin/bash"
else
  default['user']['home_root']      = "/home"
  default['user']['default_shell']  = nil
end

default['user']['manage_home']        = "true"
default['user']['create_user_group']  = "false"
default['user']['ssh_keygen']         = "false"

default['user']['data_bag_name']        = "users"
default['user']['user_array_node_attr'] = "users"
