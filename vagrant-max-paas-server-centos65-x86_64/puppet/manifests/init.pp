exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'devtools::install': }
class { 'java::install': }
class { 'ant::install': }
class { 'maven::install': }
class { 'apache2::install': }
class { 'tomcat::install': }
class { 'postgresql::install': }
class { 'iptables::install': }