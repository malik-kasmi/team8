class UsersController < ApplicationController

  def index
    if params[:city].blank?
      @users = User.all
    else
      @users = User.where(city: params[:city].capitalize)
    end
  end

  def show
    redirect_to profile_path if User.find(params[:id]) == current_user
    @user = User.find(params[:id])
  end


end
