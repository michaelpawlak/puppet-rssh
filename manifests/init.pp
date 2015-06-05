# Installs and configures rssh.
class rssh (
  $package      = $rssh::params::package,
  $config_file  = $rssh::params::config_file,
  $config_mode  = $rssh::params::config_mode,
  $allow        = $rssh::params::allow,
  $umask        = $rssh::params::umask,
  $logfacility  = $rssh::params::logfacility,
  $chrootpath   = $rssh::params::chrootpath,
  $users        = $rssh::params::users,
  $group_name   = $rssh::params::group_name ) inherits rssh::params {

  include rssh::install
  include rssh::group
  include rssh::config
}