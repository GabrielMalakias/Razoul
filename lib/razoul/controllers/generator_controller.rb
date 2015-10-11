module Razoul
  class GeneratorController < Razoul::Controller
    before_action :authenticate!

    def new
      render json: Razoul::Token.generate!
    end

    def show
      render json: Razoul::Token.current_token
    end

    def authenticate!
      render_error unless Razoul::User.authenticate(auth_params)
    end

    private
    def auth_params
      {login: request.headers['HTTP_RAZOUL_LOGIN'],
       password: request.headers['HTTP_RAZOUL_PASSWORD']}
    end
  end
end
