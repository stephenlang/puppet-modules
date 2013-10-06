# params.pp

class mysql_client::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['mysql-libs', 'mysql', 'MySQL-python']
    }
    'Debian': {
      $package_list = ['mysql-common', 'mysql-client']
    } 
  }
}
