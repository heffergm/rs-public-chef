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
default["motd-tail"]["additional_text"] = "//Broadstreet//\n"

# monit
default[:monit][:notify_email]        = "john.crepezzi@gmail.com"
default[:monit][:mail_format][:from]  = "monit@#{node[:ec2][:public_hostname]}"
default[:monit][:poll_start_delay]    = 30
default[:monit][:poll_period]         = 30
