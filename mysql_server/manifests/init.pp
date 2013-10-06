# init.pp

class mysql_server (
  $package_list = $mysql_server::params::package_list,
  $service_name = $mysql_server::params::service_name,
) inherits mysql_server::params {

  package {
    $package_list: ensure => installed;
  }

  $password = 'ilikejokes123'

  file { '/etc/my.cnf':
    source => 'puppet:///modules/mysql_server/my.cnf',
    owner => 'root',
    group => 'root',
    mode  => '644',
    notify => Service [$service_name],  # Will restart service after change
  }

  service { $service_name :
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
  }
}
