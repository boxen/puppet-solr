# Installs solr via Homebrew.
#
# Usage:
#
#     include solr
class solr {
  require homebrew
  require java

  package { 'boxen/brews/solr':
    ensure => '3.6.1-boxen1'
  }
}
