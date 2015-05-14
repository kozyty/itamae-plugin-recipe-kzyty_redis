require 'spec_helper'

RSpec.describe 'package recipe' do
  case os[:family]
  when 'redhat', 'fedora'
    describe package('redis') do
      it { should be_installed }
    end
  when 'debian', 'ubuntu'
    describe package('redis-server') do
      it { should be_installed }
    end
  else
    pending "FIXME: your platform is not supported yet.'#{os[:family]}'"
  end
end
