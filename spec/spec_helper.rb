require 'bundler/setup'
require 'pry'
Bundler.setup

if ENV['COVERAGE']
  require 'simplecov'
  require 'simplecov-rcov'
  require 'simplecov-gem-adapter'

  SimpleCov.start 'gem' do
    formatter SimpleCov::Formatter::RcovFormatter
    add_filter '/spec/'
  end
end

require 'rspec'
require 'rspec/its'
require 'webmock/rspec'

require 'razoul'


RSpec.configure do |c|
  c.disable_monkey_patching!
end


