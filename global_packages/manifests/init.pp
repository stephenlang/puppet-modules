# init.pp

class global_packages (
  $package_list = $global_packages::params::package_list,
) inherits global_packages::params {

  package {
    $package_list: ensure => installed;
  }
}
