# init.pp

class mysql_client (
  $package_list = $mysql_client::params::package_list,
) inherits mysql_client::params {

  package {
    $package_list: ensure => installed;
  }
}
