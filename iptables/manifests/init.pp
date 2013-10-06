# init.pp
    
class iptables {
      
  service { 'iptables':
    ensure    => running,
    enable    => true,
  }
      
  file { '/etc/sysconfig/iptables':
    source  => 'puppet:///modules/iptables/iptables',
    owner => 'root',
    group => 'root',
    mode  => '600',
    notify => Service ['iptables'],  # Will restart service after change

  }

}
