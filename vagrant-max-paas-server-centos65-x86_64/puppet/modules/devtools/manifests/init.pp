# Class: devtools
#
# A Puppet module that ensure specific packages are installed for devlopment tasks
#
# Requires:
#
# Actions:
#
#   Install all the packages listed in devtools::params::packages
#
# Example:
#
#   include devtools
#
class devtools(
  $manage_epel    = true,
  $package_ensure = latest,
) {

  include devtools::params

  if $::osfamily == 'RedHat' {
    if $manage_epel {
      require epel
    }
  }

  package {$devtools::params::packages:
    ensure => $package_ensure,
  }

}
