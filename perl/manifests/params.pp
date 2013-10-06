# params.pp

class perl::params {

  case $osfamily {
    'RedHat': {
      require epel
      $package_list = ['perl', 'perl-libs']
    }
    'Debian': {
      $package_list = ['perl']
    } 
  }
}
