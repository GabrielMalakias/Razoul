module Razoul
  class AuthenticationController < ActionController::Base
    def authenticate!
      @token = request.headers[Razoul.configuration.token_key]
      render_error unless valid_token?
    end

    def valid_token?
      Razoul::Token.valid_token?(@token)
    end

    def render_error
      render text: "No donuts for you"
    end
  end
end
