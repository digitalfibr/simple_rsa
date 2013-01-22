module SimpleRSA
  class Base
    def encrypt string
      Base64::encode64 public_key.public_encrypt(string)
    end

    def decrypt string
      private_key.private_decrypt Base64::decode64(string)
    end

    protected
    def public_key
      @public ||= get_key('id_rsa.pub')
    end

    def private_key
      @private ||= get_key('id_rsa')
    end
  end
end