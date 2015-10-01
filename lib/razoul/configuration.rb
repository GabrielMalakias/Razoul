module Razoul
  class Configuration
    attr_accessor :token_prefix, :database, :token_key, :login, :password, :expiration_time

    def initialize
      @token_prefix = 'Razoul_Auth'
      @database = 'redis'
      @token_key = 'RAZOUL_AUTH_KEY'
      @expiration_time = 60
    end

    def has_attr?(key)
      respond_to?(key)
    end

  end
end
