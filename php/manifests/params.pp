# params.pp

class php::params {

  case $osfamily {
    'RedHat': {
      require epel
      $package_list = [
        'php',
        'php-gd',
        'php-mysql',
        'php-pecl-apc',
        'php-xml',
        'php-devel']
      $service_name = 'httpd'
      $php_d = '/etc/php.d'
      $php_ini = '/etc/php.ini'
    }
#    'Debian': {
#      $package_list = [
#      'libapache2-mod-php5',
#      'php5-cli',
#      'php-pear',
#      'php5-mysql',
#      'php-apc',
#      'php5-gd',
#      'php5-dev',
#      'php5-curl']
#      $service_name = 'apache2'
#      $php_d = '/etc/php5/conf.d'
#      $php_ini = '/etc/php.ini'
#    }
  }
}
