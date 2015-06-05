class rssh::install (
  $package  = $rssh::package ) inherits rssh {
  package {
    "${package}":
      ensure  => present,
      before  => Class[
        'rssh::config',
        'rssh::group'
      ]
  }
}