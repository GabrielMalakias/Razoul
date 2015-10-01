module Razoul
  class Model

    def self.persistence
      @persistence ||= Razoul::Persistence::Database.new
    end

  end
end
