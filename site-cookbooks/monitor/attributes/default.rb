case chef_environment
when 'production'
  default['sensu']['version'] = "0.10.0-2"

  default["monitor"]["default_handlers"] = [ "debug", "pagerduty", "irc" ]
  default["monitor"]["metric_handlers"]  = [ "debug" ]
when 'staging'
  default['sensu']['version'] = "0.10.0-2"

  default["monitor"]["default_handlers"] = [ "debug", "irc" ]
  default["monitor"]["metric_handlers"]  = [ "debug" ]
end

override["sensu"]["use_embedded_ruby"]             = true
default["monitor"]["sensu_plugin_version"]         = "0.1.6"
default["monitor"]["master_address"]               = nil
default["monitor"]["environment_aware_search"]     = false
default["monitor"]["use_local_ipv4"]               = false
default["monitor"]["sensu_plugin_version"]         = "0.1.6"
default["monitor"]["additional_client_attributes"] = Mash.new
default["monitor"]["sudo_commands"]                = Array.new

