# init.pp

class users {

  require groups

# Example
#
#  user {'admin':
#    comment     => 'Administrator',
#    home        => '/home/admin',
#    uid         => '1000',
#    gid         => '1000',
#    groups      => ['wheel', 'dev', 'prod'],
#    managedhome => true,
#    #password   => '$6$REREyourpasswordhashhere',
#  }
#    ssh_authorized_key { 'admin_ssh':
#      user      => 'admin',
#      type      => 'dsa',
#      key       => 'AAAyourpublickeyhere'
#  }

}
