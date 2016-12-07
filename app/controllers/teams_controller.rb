class TeamsController < ApplicationController


  def index
    # @teams = Team.all
    @teams = policy_scope(Team)
  end

  def new
    @team = Team.new
    authorize @team
  end

  def create
    @team = Team.new(team_params)
    authorize @team
    @team.captain = current_user
    @team.save
    TeamUser.create(user: @team.captain, team: @team, requester: @team.captain, status: "accept")

    redirect_to teams_path
  end

  # def edit
  #   @team = Team.find(params[:id])
  # end

  # def update
  #   @team = Team.find(params[:id])
  #   @team.update(team_params)

  #   redirect_to teams_path
  # end


  # def destroy
  #   @team = Team.find(params[:id])
  #   @team.destroy

  #   redirect_to teams_path
  # end

private

  def team_params
    params.require(:team).permit(:name, :city, :description)
  end

end
