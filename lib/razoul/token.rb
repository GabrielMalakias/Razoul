module Razoul
  class Token
    attr_accessor :value, :created_at
    
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

    def is_expired?
      Time.now.to_i - self.created_at >= Razoul.configuration.expiration_time
    end
  end
end
