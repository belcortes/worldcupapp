class UsersController < ApplicationController
  before_filter :ensure_admin, only: [:index, :destroy]
  def index
    puts 'enter index'
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      render :nothing => true
    else
      render :new
    end
  end
  def destroy
      User.find(params[:id]).delete
      redirect_to :back
  end
end