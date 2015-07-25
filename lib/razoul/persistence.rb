module Razoul
  class Persistence
    attr_accessor :configuration

    def initialize(config = Razoul.configuration)
      @configuration = config
    end
  end
end
