require 'bundler'
require 'rack'
require 'sinatra/base'
require 'active_record'
require 'omniauth'
require 'omniauth-google-oauth2'
require './chattin-auth.rb'

GOOGLE_ID = ENV['CHATTIN_GOOGLE_CLIENT_ID']
GOOGLE_SECRET = ENV['CHATTIN_GOOGLE_SECRET']
use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_ID, GOOGLE_SECRET
end

run ChattinAuth