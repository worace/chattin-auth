require 'spec_helper'
describe ChattinAuth do

  let!(:sample_response_hash) {{"provider"=>"google_oauth2", "uid"=>"117878202181181977593", "info"=>{"name"=>"Horace Williams", "email"=>"horace.williams@hungrymachine.com", "first_name"=>"Horace", "last_name"=>"Williams"}, "credentials"=>{"token"=>"ya29.AHES6ZTg9eR0OaafJQwzd45seBXGqA-KhDQ-B2asDGFDlhutoI45", "refresh_token"=>"1/HVDRsZy2kwlN5j3uDeTryqxtmtLHVR0aDGCzuLTJZIo", "expires_at"=>1338498547, "expires"=>true}, "extra"=>{"raw_info"=>{"id"=>"117878202181181977593", "email"=>"horace.williams@hungrymachine.com", "verified_email"=>true, "name"=>"Horace Williams", "given_name"=>"Horace", "family_name"=>"Williams", "link"=>"https://plus.google.com/117878202181181977593", "gender"=>"male", "locale"=>"en-US"}}}}

  context "when a new user authenticates with Google" do

    it "gets root" do
      get('/')
      last_response.should be_ok
    end
  end
end

