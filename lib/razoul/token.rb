module Razoul
  class Token < Model
    attr_accessor :value, :created_at
    private_class_method :new

    def initialize
      @value = self.generate_key
      @created_at = Time.now.to_i
    end

    def generate_key
      digest = OpenSSL::Digest::SHA256.new
      secret = Razoul.configuration.password
      string = Razoul.configuration.login
      OpenSSL::HMAC.hexdigest(digest, secret, string)
    end

    def expired?
      puts "Time now: #{Time.now.to_i} - #{self.created_at}"
      Time.now.to_i - self.created_at >= Razoul.configuration.expiration_time
    end

    class << self
      def current_token
        Marshal.load(persistence.find(Razoul.configuration.token_key))
      end

      def generate!
        persistence.save(Razoul.configuration.token_key, Marshal.dump(new))
      end
    end

    def valid_token?(token)
      persistence.find(Razoul.configuration.token_key)
    end

  end
end
