#
# Cookbook Name:: emacs24
# Recipe:: default
#
# Copyright 2013 Sliim
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

include_recipe "apt"

dist = node['emacs24']['use_unstable'] == true ? "unstable/" : "stable/"

apt_repository "emacs24" do
  uri "http://emacs.naquadah.org/"
  distribution dist
  key "http://emacs.naquadah.org/key.gpg"
  deb_src true
end

package "emacs-snapshot" do
  action :install
end
