# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
#require File.expand_path("../../config/environment", __FILE__)

require 'shoulda-matchers'
require 'simple_rsa'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir["./spec/support/**/*.rb"].each {|f| require f }

RSpec.configure do |config|
  config.mock_with :rspec

  config.before(:each) do
    # we need a fresh tmp directory for our tests
    FileUtils.rm_rf './tmp' if File.exist?('./tmp')
    Dir::mkdir('./tmp')
  end
end