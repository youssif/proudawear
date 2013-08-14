class ApplicationController < ActionController::Base
  protect_from_forgery



  def correct_user?
    
    if User.find(params[:id]) == current_user
      return true
    else
      return false
    end
  end

end
