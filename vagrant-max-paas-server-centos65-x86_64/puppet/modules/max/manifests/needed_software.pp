#
# = MAX installer.  for needed software.
#
class max::needed_software {

   # CentOS libyaml-devel install
   exec { 'installing Development Tools':
      command => '/usr/bin/yum -y groupinstall "Development Tools" ',
   }

   $srcdir = "/tmp"
   wget::fetch { 'epel-release-6-8.noarch':
      source      =>  "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm http://rpms.famillecollet.com/enterprise/remi-release-6.rpm",
      destination => "${srcdir}"
    } ->
    exec { 'install epel-release-6-8.noarch':
      command => "/bin/rpm -Uvh /home/vagrant/remi-release-6*.rpm /home/vagrant/epel-release-6*.rpm",
    }

    exec { 'installing libyaml-devl':
      command => "yum install libyaml-devel",
    }
}
