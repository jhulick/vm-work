exec { 'yum update':
  command => '/usr/bin/yum update -y';
}

class { 'devtools': }
class { 'wget': }
class { 'java': version => 'present'}
class { 'ant': }
class { 'maven': }
class { 'tomcat': }
class { 'postgresql::server': }