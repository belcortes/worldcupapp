class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])   #method to find its user by its id
    end
  end

    private

  def ensure_admin   #this method will return true of there is a user logged in and if the user is an admin
    unless current_user && current_user.admin?
      render text: 'not authorized'
    end
  end
end
