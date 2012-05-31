class ChattinAuth < Sinatra::Base
  get '/' do
    <<-HTML
      <ul>
        <li><a href='/auth/google_oauth2'>Sign in with google</a></li>
      </ul>
    HTML
  end

  get '/auth/:provider/callback' do
    raise "boom"
    auth = request.env["omniauth.auth"]
    raise auth.to_hash.inspect
    user = User.find_by_uid(auth.uid)
  end
end
