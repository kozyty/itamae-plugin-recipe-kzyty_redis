require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

namespace :spec do
  RSpec::Core::RakeTask.new('localhost') do |t|
    ENV['TARGET_HOST'] = 'localhost'
    t.pattern = 'spec/**/*_spec.rb'
  end
end
