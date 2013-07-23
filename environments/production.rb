name "production"
description "The production environment"
#cookbook_versions  "couchdb" => "= 11.0.0"
default_attributes "monitor" => { "pagerduty_api_key" => "779b591489b9485a96ce7ae73ec1ac7c" }
default_attributes "monitor" => { "irc_server"        => "irc://sensutest@irc.freenode.net#sensu123" }
default_attributes "monitor" => { "default_handlers"  => [ "debug", "pagerduty", "irc" ] }
default_attributes "monitor" => { "metric_handlers"   => [ "debug" ] }

