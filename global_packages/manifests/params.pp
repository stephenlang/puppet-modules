# params.pp

class global_packages::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['git', 'iotop', 'screen', 'wget', 'curl', 'mtr', 'rcs', 'htop', 'mlocate']
    }
    'Debian': {
      $package_list = ['git', 'iotop', 'screen', 'wget', 'curl', 'mtr', 'rcs', 'htop', 'mlocate']
    } 
  }
}
