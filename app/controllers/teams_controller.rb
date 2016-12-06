class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]


  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @players_accept = TeamUser.where(team_id: @team.id, status: "accept")
    @players_pending = TeamUser.where(team_id: @team.id, status: "pending")
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.captain = current_user
    @team.save

    redirect_to teams_path
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)

    redirect_to teams_path
  end


  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to teams_path
  end

private

  def team_params
    params.require(:team).permit(:name, :city, :description)
  end

end
