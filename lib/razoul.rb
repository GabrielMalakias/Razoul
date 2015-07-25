require 'slogger'
require 'razoul/configuration'
require 'razoul/persistence'
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
 
 begin
   require 'pry'
 rescue LoadError
 end

  def self.configure
    yield(configuration)
  end
end
