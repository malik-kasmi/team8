class TeamUsersController < ApplicationController

before_action :authenticate_user!

  def create
    @team_user = TeamUser.new(user: current_user)
    authorize @team_user
    @team_user.save

    redirect_to teams_path
  end

#   def accept
#     @teamuser = TeamUser.find(params[:id])
#     @teamuser.update(status: "accept")
#     redirect_to profile_path
#   end

#   def reject
#     @teamuser = TeamUser.find(params[:id])
#     @teamuser.update(status: "reject")
#     redirect_to profile_path
#   end


# private

#   def team_user_params
#     params.require(:team_user).permit(:team_id, :user_id, :requester_id, :status)
#   end

end
