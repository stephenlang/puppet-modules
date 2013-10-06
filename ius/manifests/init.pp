# Class ius
#
# Actions:
#   Configure the proper repositories and import GPG keys
#
# Requires:
#   You should probably be on an Enterprise Linux variant. (Centos, RHEL, Scientific, Oracle, Ascendos, et al)
#
# Sample Usage:
#  include ius
#
class ius inherits ius::params {

  if $::osfamily == 'RedHat' and $::operatingsystem != 'Fedora' {

    yumrepo { 'ius':
      mirrorlist     => "http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-${::operatingsystem}${::os_maj_version}&arch=${::architecture}",
      failovermethod => 'priority',
      proxy          => $ius::params::proxy,
      enabled        => '1',
      gpgcheck       => '1',
      gpgkey         => "file:///etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY",
      descr          => "IUS Community Packages for Enterprise ${::os_maj_version} - ${::architecture}"
    }

    file { "/etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY":
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => "puppet:///modules/ius/IUS-COMMUNITY-GPG-KEY",
    }

    ius::rpm_gpg_key{ "IUS-COMMUNITY-GPG-KEY":
      path => "/etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY"
    }
  } else {
      notice ("Your operating system ${::operatingsystem} will not have the IUS repository applied")
  }

}
