#
# Cookbook Name:: nvm
# Recipe:: default
#
# Copyright 2013, HipSnip Limited
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

include_recipe 'git'

############################################################################
# Install dependencies

package 'libcurl3' do
  action :install
end

package 'curl' do
  action :install
end

if node['nvm']['install_deps_to_build_from_source']
  package 'build-essential' do
    action :install
  end
  package 'libssl-dev' do
    action :install
  end
end

############################################################################
# Download nvm

git node['nvm']['directory'] do
  repository node['nvm']['repository']
  reference node['nvm']['reference']
  action :sync
end

#############################################################################
# Install nvm

template '/etc/profile.d/nvm.sh' do
  source 'nvm.sh.erb'
  mode 0755
end