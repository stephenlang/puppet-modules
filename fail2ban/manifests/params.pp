# params.pp

class fail2ban::params {

  case $osfamily {
    'RedHat': {
      require epel
      $package_list = ['fail2ban']
    }
    'Debian': {
      $package_list = ['fail2ban']
    } 
  }
}
