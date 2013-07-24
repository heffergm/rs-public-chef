#
# Cookbook Name:: monitor
# Recipe:: redis
#
# Copyright 2013, Sean Porter Consulting
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

sensu_check "foo_bar_test_process" do
  command "check-procs.rb -p foobar -w 2 -c 3 -C 1"
  handlers ["default"]
  standalone true
  interval 30
end

sensu_check 'orbital_http_response' do
  command "check-http.rb -h 'www.google.com' -p '/' -P 443 -s true -t 5 -q 'match_this_pattern'"
  handlers ["default"]
  standalone true
  interval 10
end
