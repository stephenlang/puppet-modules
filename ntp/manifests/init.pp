# init.pp

class ntp (
  $package_list = $ntp::params::package_list,
  $service_name = $ntp::params::service_name,
) inherits ntp::params {

  package {
    $package_list: ensure => installed;
  }

  file { '/etc/ntp.conf':
    source => "puppet:///modules/ntp/ntp.conf.${osfamily}",
    owner   => "root",
    group   => "root",
    mode  => '644',
    notify => Service [$service_name],  # Will restart service after change
  }

  service { $service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
