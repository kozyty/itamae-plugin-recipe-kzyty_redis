require 'spec_helper'

RSpec.describe 'enable recipe' do
  case os[:platform]
  when 'redhat', 'fedora'
    describe service('redis') do
      it { should be_enabled }
      it { should be_running }
    end
  when 'debian', 'ubuntu'
    describe service('redis-server') do
      it { should be_enabled }
      it { should be_running }
    end
  else
    pending "FIXME: your platform is not supported yet.'#{os[:platform]}'"
  end
end
