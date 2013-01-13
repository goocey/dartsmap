class OauthResultController < ApplicationController
  def index
    client = OAuth2::Client.new(GOAUTH_CLIENT_ID, GOAUTH_SECRECT,{:site => 'https://accounts.google.com' :authorize_url => '/o/oauth2/auth', :token_url => '/o/oauth2/token'})
    client.auth_code.authorize_url(:redirect_uri => 'http://luna.local.com:8080/oauth_result/callback')

    token = client.auth_code.get_token(:scope => GOAUTH_SCOPE, :access_type => 'offline'
                                       :redirect_uri => oauth2callback,
                                       :approval_prompt => 'force')
  end
  def callback
  end
end
