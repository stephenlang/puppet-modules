# init.pp

# All Apache configurations and vhosts are pulled from apache/files.  Modify
# for your environment accordingly.
# conf - contains apache specific configurations
# vhost.d - contains site specific vhosts
# conf.d - contains module specific configurations

class apache (
  $package_list = $apache::params::package_list,
  $service_name = $apache::params::service_name,
  $file_source  = $apache::params::file_source,
  $file_dest    = $apache::params::file_dest,
) inherits apache::params {

  package {
    $package_list: ensure => installed;
  }

  file { $file_dest:
    source => [$file_source],
    recurse => true,
    owner   => "root",
    group   => "root",
  }

  service { $service_name:
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }
}
