require 'spec_helper'

describe 'solr' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should include_class('homebrew')
    should include_class('java')

    should contain_package('boxen/brews/solr').with({
      :ensure => '3.6.1-boxen1'
    })
  end
end
