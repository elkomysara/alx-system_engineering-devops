# This Puppet manifest kills a process named 'killmenow'
exec { 'kill killmenow process':
  command => '/usr/bin/pkill killmenow',
  path    => '/usr/bin/',
  onlyif  => '/usr/bin/pgrep killmenow',
}
