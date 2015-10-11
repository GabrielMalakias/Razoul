module Razoul
  class AuthenticationController < Razoul::Controller

    def authenticate!
      @token = request.headers["HTTP_#{Razoul.configuration.token_key}"]
      render_error unless valid_token?
    end

    def valid_token?
      @token.present? ? Razoul::Token.valid_token?(@token) : false
    end

  end
end
