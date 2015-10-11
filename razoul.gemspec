#coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'razoul/version'

Gem::Specification.new do |s|
  s.name           = 'razoul'
  s.version        =  Razoul::VERSION
  s.date           = '2015-07-20'
  s.summary        = 'Gem for generate token to Auth'
  s.description    = 'Gem for generate token to Auth'
  s.authors        = ['Gabriel Malaquias']
  s.email          = 'gabriel07malakias@gmail.com'
  s.homepage       = 'https://github.com/GabrielMalakias/Razoul'
  s.license        = 'MIT'

  s.files          = %w(README.md) + Dir['lib/**/*']
  s.executables    = s.files.grep(%r(bin/)) { |f| File.basename(f) }
  s.test_files     = Dir['spec/**/*']
  s.require_paths  = ['lib']

  s.add_dependency 'redis', '~> 3.2.1'
  s.add_dependency 'slogger'
  s.add_dependency 'actionpack'
  s.add_dependency 'pry'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'simplecov-rcov'
  s.add_development_dependency 'simplecov-gem-adapter'
  s.add_development_dependency 'simplecov'
end

