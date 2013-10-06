# params.pp

class sshd::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['openssh-server', 'openssh']
      $service_name = 'sshd'
    }
    'Debian': {
      $package_list = ['openssh-server', 'openssh-client']
      $service_name = 'ssh'
    } 
  }
}
