# init.pp

class sshd (
  $package_list = $sshd::params::package_list,
  $service_name	= $sshd::params::service_name,
) inherits sshd::params {

  package {
    $package_list: ensure => installed;
  }

  file { '/etc/ssh/sshd_config':
    source  => "puppet:///modules/sshd/sshd_config.${osfamily}",
    owner => 'root',
    group => 'root',
    mode  => '600',
    notify => Service [$service_name],  # Will restart service after change
  }

  service { $service_name:
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
  }
}
