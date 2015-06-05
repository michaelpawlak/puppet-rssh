class rssh::params {
  $package      = 'rssh'
  $config_file  = '/etc/rssh.conf'
  $config_mode  = '0644'
  $config_group = 'root'
  $config_owner = 'root'
  $allow        = []
  $umask        = '022'
  $logfacility  = 'LOG_USER'
  $chrootpath   = false
  $users        = []
  $group_name   = 'rsshusers'
}