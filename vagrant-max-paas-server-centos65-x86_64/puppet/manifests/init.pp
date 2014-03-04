exec { 'yum update':
  command => '/usr/bin/yum update -y';
}

########## EPEL installation ##########

#package { 'EPEL RPM':
#    provider => rpm,
#    ensure => installed,
#    source => 'http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm',
#    #notify => File["GlobalPermission"]
#}

########## REMI installation ##########

#package { 'REMI RPM':
#    provider => rpm,
#    ensure => installed,
#    source => 'http://rpms.famillecollet.com/enterprise/remi-release-6.rpm',
#    #notify => File["GlobalPermission"]
#}

#exec { 'yum install libyaml-devl':
#  command => '/usr/bin/yum install libyaml-devel';
#}

##class { 'max': }
class { 'wget': }
class { 'java': version => 'present'}
class { 'ant': }
class { 'maven': }
class { 'tomcat': }
class { 'postgresql::server': }
class { 'elasticsearch':
  package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.8.noarch.rpm'
}