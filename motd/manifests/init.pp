# init.pp

class motd {

file { '/etc/issue':
  source => 'puppet:///modules/motd/issue',
  owner => 'root',
  group => 'root',
  mode  => '644',
}

file { '/etc/issue.net':
  source => 'puppet:///modules/motd/issue.net',
  owner => 'root',
  group => 'root',
  mode  => '644',
}

}
