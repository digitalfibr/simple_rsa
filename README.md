# SimpleRSA

Just an RSA interface.
It's based on http://nunojob.wordpress.com/2008/12/08/rsa-encrypt-decrypt-in-ruby/ works.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_rsa', git: 'https://github.com/digitalfibr/simple_rsa.git'

And then execute:

    $ bundle

## Usage

### Generate your keys

````.rb
  SimpleRSA.generate_keys_in "./tmp"
  #will generate public and private keys in tmp folder
````

###  Filesystem keys

````.rb
  rsa = SimpleRSA::FileSystem.new './tmp'
  # generates tmp/id_rsa and tmp/id_rsa.pub
  
  encrypted = rsa.encrypt 'Hello secret world'
  # retour your rsa encrypted string : "aIwGJgP9Wo/ZMgXS4m...8nfH1aviqAsf37u4=\n"
  
  rsa.decrypt encrypted
  # retour your rsa decrypted string : "Hello secret world"
````

## Env keys

Heroku for instance does not allow to store files and you don't want to drop you keys in our sources.
So you will use env to store them

http://stackoverflow.com/questions/6942600/multi-line-config-variables-in-heroku

````
  heroku config:add SIMPLE_ID_RSA="YOUR_ID_RSA" SIMPLE_ID_RSA_PUB="YOUR_ID_RSA_PUB"
````

````.rb
  rsa = SimpleRSA::Environment.new
  
  # or if you want to change prefix
  
  rsa = SimpleRSA::Environment.new "MY"
  # will load MY_ID_RSA and MY_ID_RSA_PUB
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
