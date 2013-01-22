module SimpleRSA
  class Environment < Base
    ENV_BASE = "SIMPLE"

    def initialize env_base=nil
      self.env_base = env_base || ENV_BASE
    end

    private
    attr_accessor :env_base

    def get_key sufix
      key = "#{env_base}_#{sufix.gsub('.', '_')}".upcase
      OpenSSL::PKey::RSA.new ENV[key]
    end
  end
end