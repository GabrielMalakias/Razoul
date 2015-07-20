module Razoul
  class Configuration
    EXTENSION = '.yml'

    attr_accessor :config

    def initialize(config)
      @logger= Razoul::Logger.new
      @config = self.load(config)
    end

    def load(dir_to_file)
      fail @logger.log("Configuration file invalid", :error) unless File.file? dir_to_file
      fail @logger.log("Extension invalid", :error) unless File.extname(dir_to_file).eql?(EXTENSION)
      return YAML.load_file dir_to_file
    end
  end
end
