# Installs solr via Homebrew.
#
# Usage:
#
#     include solr
class solr {
  include homebrew
  include java

  homebrew::formula { 'solr':
    before => Package['boxen/brews/solr']
  }

  package { 'boxen/brews/solr':
    ensure  => '3.6.1-boxen1',
    require => Class['java']
  }
}
