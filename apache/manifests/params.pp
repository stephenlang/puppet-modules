# params.pp

class apache::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['httpd', 'mod_ssl']
      $service_name = 'httpd'
      $file_source  = 'puppet:///modules/apache/httpd.RedHat'
      $file_dest    = '/etc/httpd'
    }
    'Debian': {
      $package_list = ['apache2']
      $service_name = 'apache2'
      $file_source  = 'puppet:///modules/apache/httpd.Debian'
      $file_dest    = '/etc/apache2'
    }
  }
}
