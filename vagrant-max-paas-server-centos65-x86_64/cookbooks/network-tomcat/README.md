#### network-tomcat Cookbook
=======================
Chef cookbook for configuring the network for Tomcat.

OK, well, really it doesn't configure the network. It configures IP Tables on a server, which is kind of the network. The problem is that "Software Defined Networks" are a bit of vaporware right now and we're trying to develop some code to the promise of what SDN may offer.

IP Tables will contain rules for 8080 and 8443 after this cookbook is run.

Requirements
------------
You need <a href="https://github.com/dcrosta/cookbook-simple-iptables">the simple-iptables</a> cookbook for things to work right.

Usage
------------
Just include `network-tomcat` in the cookbook for your app that needs the network configured for Tomcat's default ports:

```ruby
include_recipe "network-tomcat"
# do any specifics you need in your app recipe hereafter
```

License and Authors
-------------------
Authors: Brian Webb

Copyright 2013 Brian Webb

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

See the License for the specific language governing permissions and
limitations under the License.

