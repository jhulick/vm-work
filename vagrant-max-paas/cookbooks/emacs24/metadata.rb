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

name             "emacs24"
maintainer       "Sliim"
maintainer_email "sliim@mailoo.org"
license          "Apache 2.0"
description      "Installs and configures emacs24 on debian distribution"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"

depends "apt"

attribute "emacs24/use_unstable",
  :display_name => "Use unstable distribution.",
  :description => "Setup apt source list for unstable version instead stable.",
  :default => "false"
