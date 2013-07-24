# Installs solr via Homebrew.
#
# Usage:
#
#     include solr
class solr {
  include homebrew
  include java

  homebrew::formula { 'solr': }
  ->
  package { 'boxen/brews/solr':
    ensure  => '4.3.1-boxen1',
    require => Class['java']
  }
}
