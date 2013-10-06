# init.pp

class timezone {

file { '/etc/localtime':
  ensure  => 'link',
  target  => '/usr/share/zoneinfo/US/Eastern',
}

file { '/etc/sysconfig/clock':
  source => 'puppet:///modules/timezone/clock',
  owner => 'root',
  group => 'root',
  mode  => '644',
}

}
