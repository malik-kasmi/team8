class ProfilesController < ApplicationController

  def edit
    @profile = current_user
  end

  def update
    @profile = current_user
    @profile.update(current_user_params)

    redirect_to profile_path(@profile)
  end

  def show
    @profile = current_user
  end

private

  def current_user_params
    params.require(:profile).permit(:city, :age,
     :gender, :description, :favorite_position)
  end

end
