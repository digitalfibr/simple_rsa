require "simple_rsa/version"
require "simple_rsa/base"
require "simple_rsa/file_system"
require "simple_rsa/environment"
require 'openssl'
require 'base64'

module SimpleRSA
  def self.generate_keys_in data_path
    privkey  = File.join(data_path, 'id_rsa')
    pubkey   = File.join(data_path, 'id_rsa.pub')
    unless File.exists?(privkey) || File.exists?(pubkey)
      keypair  = OpenSSL::PKey::RSA.generate(1024)
      Dir.mkdir(rsa_path) unless File.exist?(data_path)
      File.open(privkey, 'w') { |f| f.write keypair.to_pem } unless File.exists? privkey
      File.open(pubkey, 'w') { |f| f.write keypair.public_key.to_pem } unless File.exists? pubkey
    end
  end
end
