# init.pp

class fail2ban (
  $package_list = $fail2ban::params::package_list,
) inherits fail2ban::params {

  package { 
    $package_list : ensure => installed
  }

  service { 'fail2ban':
    ensure    => running,
    enable    => true,
    hasstatus => true,
  }
}
