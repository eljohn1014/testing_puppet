# Class testing_puppet
#
# Description
# Example module for blogging about testing Puppet code.
# http://blog.mmars.org
#
class testing_puppet {
  include apache
  
  file { '/var/www':
    owner   => 'apache',
    group   => 'apache',
    ensur => directory,
}
