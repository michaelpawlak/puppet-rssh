class rssh::config (
  $allow        = $rssh::allow,
  $umask        = $rssh::umask,
  $chrootpath   = $rssh::chrootpath,
  $logfacility  = $rssh::logfacility,
  $config_file  = $rssh::config_file,
  $config_mode  = $rssh::config_mode,
  $config_owner = $rssh::config_owner,
  $config_group = $rssh::config_group,
  $users        = $rssh::users ) inherits rssh {

  file {
    "${config_file}":
      ensure  => present,
      path    => $config_file,
      owner   => $config_owner,
      group   => $config_group,
      mode    => $config_mode,
      require => Class[
        'rssh::install'
      ],
      content => template('rssh/rssh.conf.erb')
  }
}