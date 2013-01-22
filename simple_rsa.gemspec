# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_rsa/version'

Gem::Specification.new do |gem|
  gem.name          = "simple_rsa"
  gem.version       = SimpleRSA::VERSION
  gem.authors       = ["Benoit Molenda"]
  gem.email         = ["benoit@sush.io", "benoit@proxygear.com"]
  gem.description   = %q{Simple class to use RSA encryption}
  gem.summary       = %q{Simple class to encrypt, decrypt and generate RSA private and publuc key unsing openssl}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
