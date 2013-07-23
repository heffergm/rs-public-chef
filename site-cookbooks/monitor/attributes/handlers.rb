case chef_environment
when 'production'
  default["monitor"]["pagerduty_api_key"] = "779b591489b9485a96ce7ae73ec1ac7c"
  default["monitor"]["irc_server"] = "irc://sensutest@irc.freenode.net#sensu123"

  default["monitor"]["graphite_address"] = nil
  default["monitor"]["graphite_port"] = nil
when 'staging'
  default["monitor"]["pagerduty_api_key"] = ""
  default["monitor"]["irc_server"] = "irc://sensutest@irc.freenode.net#sensu123_staging"

  default["monitor"]["graphite_address"] = nil
  default["monitor"]["graphite_port"] = nil
end

