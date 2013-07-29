class ApplicationController < ActionController::Base
  protect_from_forgery



  def correct_user?
    User.find(params[:id]) == current_user
  end

end
