class rssh::group (
  $group  = $rssh::group_name ) inherits rssh {
  
  group {
    "$group":
      ensure    => 'present',
      provider  => 'groupadd',
      before    => Class[
        'rssh::config'
      ],
      require   => Class[
        'rssh::install'
      ]
  }
}