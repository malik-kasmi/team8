class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    redirect_to profile_path if User.find(params[:id]) == current_user
    @user = User.find(params[:id])
  end


end
