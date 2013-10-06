# init.pp

class sysctl {

file { '/etc/sysctl.conf':
  source => 'puppet:///modules/sysctl/sysctl.conf',
  owner => 'root',
  group => 'root',
  mode  => '644',
}

exec { "sysctl":
    command  =>  "/sbin/sysctl -q -p",
    path     =>  "/usr/bin/:/usr/sbin/:/usr/local/bin/:/bin/:/sbin/"
}

}
