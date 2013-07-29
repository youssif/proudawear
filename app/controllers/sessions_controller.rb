class SessionsController < ApplicationController
  skip_before_filter :check_sign_in, :only => [:new, :create]

  def new
    redirect_to '/auth/facebook'
  end

  def create

    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
  end


  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

#   def index
    
#   end


end