require 'spec_helper'

RSpec.describe 'config recipe' do
  include NodeHelper

  describe file('/etc/redis.conf') do
    it { should be_file }
    its(:content) { should match(/^port #{node[:redis][:port]}$/) }
  end
end
