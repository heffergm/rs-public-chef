# chef-client daemon
default[:chef_client][:interval] = '600'

# chef-client cron
default[:chef_client][:cron] = {
  'minute' => '*/10',
  'hour' => '*',
  'path' => nil,
  'environment_variables' => nil,
  'log_file' => '/var/log/chef/client.log',
  'use_cron_d' => false
}

# motd
default["motd-tail"]["additional_text"] = "//Yo Mama!//\n"

