module SimpleRSA
  class FileSystem < SimpleRSA::Base
    def initialize data_path
      self.data_path = data_path
    end
    
    private
    attr_accessor :data_path

    def public_key
      @public ||= get_key('id_rsa.pub')
    end

    def private_key
      @private ||= get_key('id_rsa')
    end

    def get_key filename
      OpenSSL::PKey::RSA.new File.read(File.join(data_path, filename))
    end
  end
end