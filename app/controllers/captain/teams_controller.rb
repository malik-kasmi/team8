class Captain::TeamsController < ApplicationController

  def index
    @teams = Team.where(captain: current_user)
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)

    redirect_to captain_team_path(@team)
  end

  def create
    @team = Team.new(team_params)
    @team.captain = current_user
    @team.save

    redirect_to captain_team_path(@team)
  end

  def show
    @team = Team.find(params[:id])
    @players_pending = TeamUser.where(team_id: @team.id, status: "pending")
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to captain_teams_path
  end

private

  def team_params
    params.require(:team).permit(:name, :city, :description)
  end

end
