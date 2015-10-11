module Razoul
  class User
    def self.authenticate(request_parameters)
      Razoul.configuration.login.eql?(request_parameters[:login]) and
        Razoul.configuration.password.eql?(request_parameters[:password]) ? true : false
    end
  end
end
