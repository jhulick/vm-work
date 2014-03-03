exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'devtools': }
class { 'java': }
class { 'ant': }
class { 'maven': }
class { 'apache2': }
class { 'tomcat': }
class { 'nodejs': }
class { 'postgresql': }
class { 'iptables': }