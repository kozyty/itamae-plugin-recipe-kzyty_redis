$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
#require 'itamae/plugin/recipe/redis'

require 'serverspec'

path = Pathname.new(Dir.pwd)
Dir[path.join('spec/support/**/*.rb')].each { |f| require f }

host = ENV['TARGET_HOST'] || 'localhost'
set :host, host
set :backend, (%w[localhost 127.0.0.1].include?(host) ? :exec : :ssh)
