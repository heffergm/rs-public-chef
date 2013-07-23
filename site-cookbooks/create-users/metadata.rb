maintainer       "GMH"
maintainer_email "grant@brewster.com"
license          "MIT"
description      "Users"
long_description "configure users"
version          "0.0.1"
name             "create-users"
provides         "create-users"

recipe "create-users", "Creates users"

depends "user"

%w{ debian ubuntu centos redhat smartos }.each do |os|
  supports os
end
