# init.pp

class php (
  $package_list = $php::params::package_list,
  $service_name = $php::params::service_name,
  $php_d        = $php::params::php_d,
  $php_ini	= $php::params::php_ini,
) inherits php::params {

  package { 
    $package_list: ensure => installed
  }

  file { $php_d:
    source => 'puppet:///modules/php/php.d',
      recurse => true,
      owner => 'root',
      group => 'root',
      mode  => '644',
#      notify => Service [$service_name],  # Will restart service after change
#      require => Package ['php'],
  }

  file { $php_ini:
    source => 'puppet:///modules/php/php.ini',
      owner => 'root',
      group => 'root',
      mode  => '644',
#      notify => Service [$service_name], # Will restart service after change
#      require => Package ['php'],
  }
}
