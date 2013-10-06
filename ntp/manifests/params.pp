# params.pp

class ntp::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['ntp']
      $service_name = 'ntpd'
    }
    'Debian': {
      $package_list = ['ntp']
      $service_name = 'ntp'
    } 
  }
}
