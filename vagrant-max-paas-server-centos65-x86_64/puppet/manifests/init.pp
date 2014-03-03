#exec { 'yum update':
#  command => '/usr/bin/yum update -y';
#}

class { 'max': }
class { 'wget': }
class { 'java': version => 'present'}
class { 'ant': }
class { 'maven': }
class { 'tomcat': }
class { 'postgresql::server': }