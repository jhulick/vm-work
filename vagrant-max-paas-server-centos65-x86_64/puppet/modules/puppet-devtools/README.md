puppet-devtools
===============

A Puppet module that installs all necessary packages for compiling basic software

## Examples

```
include devtools
```

This example will install the package defined in the `params.pp` manifest on their
latest available version of your package manager.

The concerned packages are (left column EL based, right column Debian based) :

* gettext
* make
* gcc
* gcc-c++                 | g++
* openssl-devel           | libssl-dev
* curl
* libicu-devel            | libicu-dev
* libyaml-devel           | libyaml-dev
* zlib-devel              | zlib1g-dev
* readline-devel          | libreadline-dev
* autoconf
* perl-ExtUtils-MakeMaker | libmodule-buil-perl & libmodule-install-perl


## OSes

This module has been tested on :

  * Debian based OS (Debian 6)
  * EL based OS (CentOS 6.3)

## License

GPLv3
