class ProfilesController < ApplicationController

  def edit
    @profile = current_user
  end

  def update
    @profile = current_user
    @profile.update(current_user_params)

    redirect_to profile_path
  end

  def show
    @profile = current_user
    @pending_teamusers = TeamUser.where(user_id: @profile.id, status: "pending")
  end

private

  def current_user_params
    params[:user][:city].capitalize!
    params.require(:user).permit(:age, :city,
     :gender, :description, :favorite_position)
  end

end
