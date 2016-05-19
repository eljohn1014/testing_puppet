require 'puppetlabs_spec_helper/module_spec_helper'

describe 'testing_puppet', :type => :class do
	let :facts do
      {
        :osfamily               => 'Debian',
        :operatingsystem        => 'Debian',
        :operatingsystemrelease => '6',
      }
    end
	context 'default parameters' do
		it { should compile }
		it { should contain_class('testing_puppet')}
		it { is_expected.to contain_file("/var/www").with(
      		'ensure'  => 'directory',
      		'owner'   => 'apache',
      		'group'   => 'apache'
      	)
    	}
		end
end