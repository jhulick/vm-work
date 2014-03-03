exec { 'yum update':
  command => '/usr/bin/yum update -y';
}

class { 'devtools': }
class { 'stdlib::stages': }
class { 'wget': }
class { 'java': version => 'present'}
class { 'ant': }
class { 'maven': }
class { 'tomcat': }
class { 'nodejs': }
class { 'postgresql::server': }