emacs24 Cookbook
================
Chef cookbook for `emacs-snapshot` (emacs24) debian package.

Requirements
------------

#### Platform
- `Debian`

#### Cookbooks
- `apt` - https://github.com/opscode-cookbooks/apt.git


Attributes
----------

* `node['emacs24']['use_unstable']` - `Boolean` - Use unstable version instead stable.

Usage
-----

Just include `emacs24` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[emacs24]"
  ]
}
```

If you want to use unstable version of emacs-snapshot, you can set `use_unstable` attribute:

```json
{
  "emacs24": {
      "use_unstable": true
  }
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org>

Copyright 2013 Sliim

Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. 
You may obtain a copy of the License at 

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software 
distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and 
limitations under the License.
