module Razoul
  class Logger
    SEVERITY_LEVEL = :info

    attr_accessor :logger

    def initialize
      @logger = Slogger::Logger.new 'Razoul', SEVERITY_LEVEL, :local0
    end

    def log(msg, severity = SEVERITY_LEVEL)
      @logger.send SEVERITY_LEVEL, msg
    end
  end
end
