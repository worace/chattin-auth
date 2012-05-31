ENV["RAILS_ENV"] ||= 'test'
require 'rspec'
require 'sinatra'
require 'rack/test'
require File.join(File.dirname(__FILE__), '/../', 'chattin-auth.rb')
# require './../chattin-auth.rb'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  ChattinAuth
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end