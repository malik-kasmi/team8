class TeamUsersController < ApplicationController

  def new
    @captain_teams = Team.where(captain_id: current_user.id)
    @team_user = TeamUser.new(user_id: params[:user_id])

  end

  def create
    @team_user = TeamUser.new(team_user_params)
    @team_user.requester_id = current_user.id
    @team_user.status = "pending"
    @team_user.save!

    @team = Team.where(id: @team_user.team_id)
    # raise
    redirect_to team_path(@team[0].id)
  end

  def accept
    @teamuser = TeamUser.find(params[:id])
    @teamuser.update(status: "accept")
    redirect_to profile_path
  end

  def reject
    @teamuser = TeamUser.find(params[:id])
    @teamuser.update(status: "reject")
    redirect_to profile_path
  end

  def leave
    @teamuser = TeamUser.find(params[:id])
    @teamuser.update(status: "leave")
    redirect_to profile_path
  end

private

  def team_user_params
    params.require(:team_user).permit(:team_id, :user_id, :requester_id, :status)
  end

end
