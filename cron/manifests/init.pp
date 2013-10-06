# init.pp

class cron {

# Examples
#
#  cron { logrotate:
#    command => "/usr/sbin/logrotate",
#    ensure  => present,
#    user    => root,
#    hour    => 2,
#    minute  => 0
#  }
#
#  cron { logrotate:
#    command => "/usr/sbin/logrotate",
#    ensure  => present,
#    user    => root,
#    hour    => [2, 4]
#  }
# 
#  cron { logrotate:
#    command => "/usr/sbin/logrotate",
#    ensure  => present,
#    user    => root,
#    hour    => ['2-4'],
#    minute  => '*/10'
#  }
#
# To disable a cronjob, set ensure => absent, then let it run on the nodes,
# before removing the cronjob from the manifest.


}
