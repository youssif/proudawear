module OauthHelper
  @oauth = Koala::Facebook::OAuth.new(api_key, app_secret, callback_url)
  @oauth.url_for_oauth_code
  @oauth.url_for_oauth_code(:permissions => "publish_stream")
  @oauth.url_for_access_token(code)
end