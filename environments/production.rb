name "production"
description "The production environment"
#cookbook_versions  "couchdb" => "= 11.0.0"
override_attributes "monitor" => { "pagerduty_api_key" => "779b591489b9485a96ce7ae73ec1ac7c" }
override_attributes "monitor" => { "irc_server"        => "irc://sensutest@irc.freenode.net#sensu123" }
override_attributes "monitor" => { "default_handlers"  => [ "debug", "pagerduty", "irc" ] }
override_attributes "monitor" => { "metric_handlers"   => [ "debug" ] }

