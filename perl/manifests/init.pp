# init.pp

class perl (
  $package_list = $perl::params::package_list,
) inherits perl::params {

  package {
    $package_list: ensure => installed;
  }
}
