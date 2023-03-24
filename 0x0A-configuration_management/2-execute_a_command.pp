# Using Puppet, create a manifest that kills a process named killmenow.

exec { 'Terminate-Process':
  command => '/usr/bin/pkill -f killmenow'
}
