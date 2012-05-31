# require 'bundler'
# require 'sinatra/base'
# require 'active_record'
# require 'omniauth'
# require 'omniauth-google-oauth2'

class ChattinAuth < Sinatra::Base
  get '/' do
    <<-HTML
      <ul>
        <li><a href='/auth/google_oauth2'>Sign in with google</a></li>
      </ul>
    HTML
  end

  get '/auth/:provider/callback' do
    session[:uid] = request.env["omniauth.auth"]["uid"]
  end

end