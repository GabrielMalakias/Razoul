require 'slogger'
require 'redis'
require 'action_pack'
require 'action_controller'
require 'razoul/configuration'
require 'razoul/persistence/database'
require 'razoul/user'
require 'razoul/controller'
require 'razoul/controllers/authentication_controller'
require 'razoul/controllers/generator_controller'
require 'razoul/persistence/redis'
require 'razoul/model'
require 'razoul/token'

module Razoul
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.cmonfigure
    yield(configuration)
  end
end
