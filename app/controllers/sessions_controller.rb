class SessionsController < ApplicationController
  def new
    puts session
  end
  def create
    user = User.find_by_email(params[:email])
    authenticated_user = user.authenticate(params[:password])
    if authenticated_user
      session[:user_id] = authenticated_user.id
      message = ''
      render text: message, layout: true
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_path
  end
end