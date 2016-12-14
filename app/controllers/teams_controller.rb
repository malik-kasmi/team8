class TeamsController < ApplicationController


  skip_before_action :authenticate_user!, only: :referal_landing


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
    if @team.save
    TeamUser.create(user: @team.captain, team: @team, requester: @team.captain, status: "accept")
    redirect_to invitation_team_path(@team)
    else
      render "new"
    end
  end

  def invitation
    @team = Team.find(params[:id])
    authorize @team
  end

  def referal_landing
    team_id = params[:team_referal_url].gsub(/join_team/, "").to_i
    @team = Team.find(team_id)
    session[:invited_by_team] = @team.id
    authorize @team
  end

  # def join_team
  #   @team = Team.find([:id])
  #   TeamUser.create(user: current_user, team: @team, requester: @team.captain, status: "accept")
  # end


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
    params.require(:team).permit(:name, :city, :description, :photo)
  end

end
