# params.pp

class mysql_server::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['mysql-devel', 'mysql-server']
      $service_name = 'mysqld'
    }
#    'Debian': {
#      $package_list = ['mysql-server']
#      $service_name = 'mysql'
#    } 
  }
}
