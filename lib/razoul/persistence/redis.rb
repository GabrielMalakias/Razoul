module Razoul
  module Persistence
    module Redis
      HOST            = '127.0.0.1'
      PORT            = 6379
      DB              = 0
      @conn           = nil

      def self.configure(class_name, config)
        class_name.new(hash_config_attrs(config))
      end

      def self.save(conn, key, value)
        conn.set(key, value)
      end

      def self.find(conn, key)
        conn.get(key)
      end

      def self.hash_config_attrs(config)
        hash = {}
        constants.map do |const|
          value =  config.has_attr?("#{self.class.name}_#{const.downcase}") ?
            config.send("#{self.class.name}_#{const.downcase}") : const_get(const)
          hash.merge!(const.downcase.to_sym =>  value)
        end
        hash
      end

    end
  end
end
