module Razoul
  class Configuration
    attr_accessor :token_prefix, :database, :token_key, :login, :password
    def initialize
      @token_prefix = 'Razoul_Auth'
      @database = 'redis'
      @token_key = 'RAZOUL_AUTH_KEY'
    end

    def has_attr?(key)
      respond_to?(key)
    end

  end
end
