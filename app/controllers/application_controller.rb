class ApplicationController < ActionController::Base
  protect_from_forgery



  def correct_user?
    
    if User.find(params[:id]) == current_user
      return true
    else
      return false
    end
  end

#allows you to redirect back to the page you were trying to log in from
  def after_sign_in_path_for(resource_or_scope)
    if request.env['omniauth.origin']
      request.env['omniauth.origin']
    end
  end

end
