module Razoul
  class Configuration
    attr_accessor :token_prefix
    def initialize()
      @token_prefix = 'Razoul_Auth'
    end
  end
end
