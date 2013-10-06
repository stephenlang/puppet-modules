# init.pp

# Set the source and mount point accordingly below.  Be sure to update
# x.x.x.x with the NFS server IP address.

class nfs-client {

  $packages = ['nfs-utils']

  package {
    $packages: ensure => installed;
  }

  file { "/var/www/vhosts":
    ensure => "directory",
  }

  mount { "/var/www/vhosts":
    device  => "x.x.x.x:/opt/nfs",
    fstype  => "nfs",
    ensure  => "mounted",
    options => "defaults",
    atboot  => "true",
  }

}
