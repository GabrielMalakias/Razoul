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

  s.files          = %(README.md) + Dir['lib/**/*']
  s.executables    = s.files.grep(%r(bin/)) { |f| File.basename(f) }
  s.test_files     = Dir['spec/**/*']
  s.require_paths  = ['lib']

  s.add_dependency  = 'redis', '~> 3.2.1'

  s.add_developement_dependency 'rspec'
  s.add_developement_dependency 'rspec-its'
  s.add_developement_dependency 'pry'
  s.add_developement_dependency 'webmock'
  s.add_developement_dependency 'rubocop'
  s.add_developement_dependency 'rubocop-spec'
end
