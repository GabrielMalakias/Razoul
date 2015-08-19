module Razoul
  module Persistence
    class Database

      attr_accessor :configuration
      attr_writer :connection

      def initialize(config = Razoul.configuration)
        @configuration = config
      end

      def conn
        @connection ||= call_module.configure(call_class, @configuration)
      end

      def save(key, value)
        call_module.save(key, value)
      end

      def find(key)
        call_module.find(key)
      end

      private

      def call_module
        Module.const_get("::Razoul::Persistence::#{@configuration.database.capitalize}")
      end

      def call_class
        Object.const_get("::#{@configuration.database.capitalize}")
      end
    end
  end
end
