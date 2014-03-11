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

class { 'stdlib': }
package { "redhat-lsb": ensure => "installed" }

##class { 'max': }
class { 'wget': }
class { 'java': version => 'present'}
class { 'ant': }
class { 'maven': }
#class { 'apache': }
#class { 'tomcat': }


include apache_c2c

apache_c2c::module {'proxy_ajp':
  ensure  => present,
}

apache_c2c::vhost {'http://max-paas.devl.onuma.com/':
  ensure => present,
}

include tomcat

tomcat::instance {'max-paas':
  ensure      => present,
  ajp_port    => '8000'
}

apache_c2c::proxypass {'max-paas':
  ensure   => present,
  location => '/home/vagrant/bootstrap/max-paas-harness',
  vhost    => 'max-paas.devl.onuma.com',
  url      => 'ajp://localhost:8000',
}



class { 'postgresql::server': }
class { 'elasticsearch':
  package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.8.noarch.rpm'
}