#Manages any Apache Configs
#
class apache::config {
  file { 'apache_cconfig':
    ensure  => $apache::config_ensure,
    path    => $apache::config_path,
    source  => "puppet:///modules/apache/${osfamily}.conf",
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  } 
}
