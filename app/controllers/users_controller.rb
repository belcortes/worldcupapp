 class UsersController < ApplicationController
  before_filter :ensure_admin, only: [:index, :destroy]
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to '/sessions/new'
    else
      render :new
    end
  end
  def edit #will use partial
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path
    else 
      @user.errors.each do |e|
        puts e
      end
      render 'edit'
    end
  end
  def destroy
      user = User.find(params[:id])
      user.delete
      redirect_to :back
  end
end
