class UsersController < ApplicationController

  def index
    if params[:city].empty?
      @users = User.all
    else
      @users = User.where(city: params[:city])
    end
  end

  def show
    redirect_to profile_path if User.find(params[:id]) == current_user
    @user = User.find(params[:id])
  end


end
