# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/redis/version'

Gem::Specification.new do |spec|
  spec.name          = 'itamae-plugin-recipe-kzyty_redis'
  spec.version       = Itamae::Plugin::Recipe::Redis::VERSION
  spec.authors       = ['Taiyo Kojima']
  spec.email         = ['kozyty@gmail.com']
  spec.licenses      = ['MIT']

  spec.summary       = 'Itamae plugin to install redis.'
  spec.description   = 'Itamae plugin to install redis by package.'
  spec.homepage      = 'https://github.com/kozyty/itamae-plugin-recipe-kzyty_redis'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'itamae', '~> 1.2'
end
