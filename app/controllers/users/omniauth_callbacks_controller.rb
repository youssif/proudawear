class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    #here, we're getting back the callback for authentication
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    # with this code you can see the data sent by facebook
    omniauth = request.env["omniauth.auth"] 

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to session[:return_to]

    end

  end
end