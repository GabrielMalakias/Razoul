module Razoul
  class GeneratorController < ActionController::Base
    def generate!
      render json: Razoul::Token.new.generate!
    end

    def current_token
      render json: Razoul::Token.new.current_token
    end
  end
end
