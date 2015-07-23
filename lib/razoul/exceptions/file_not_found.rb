module Razoul
  module Exception
    class FileNotFound < IOError
      attr_accessor :error

      def initialize(msg)
        @error = msg
      end
    end
  end
end

