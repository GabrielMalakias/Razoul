module Razoul
  class Controller < ::ActionController::Base
    def render_error
      render text: "No donuts for you"
    end
  end
end
