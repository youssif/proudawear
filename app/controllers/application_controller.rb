class ApplicationController < ActionController::Base
  protect_from_forgery

#attaches F
  def facebook_cookies
      # @facebook_cookies ||= Koala::Facebook::OAuth.new(YOUR_APP_ID, YOUR_SECRET).get_user_info_from_cookie(cookies)
  end

  # app/controllers/foo_controller.rb
  def index
    
    @access_token = facebook_cookies['access_token']
    @graph = Koala::Facebook::GraphAPI.new(@access_token)

  end

  def correct_user?
    User.find(params[:id]) == current_user
  end

end
