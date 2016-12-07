class GamesController < ApplicationController

  def new
    @current_team = Team.find(params[:team_id])
    @game = Game.new(requester: @current_team)
    authorize @game
    @teams = Team.all - [@current_team]
  end

  def create
    @current_team = Team.find(params[:team_id])
    opponent_team = Team.find(params[:opponent_id])
    @game = Game.new(requester: @current_team, opponent: opponent_team, status: "pending")
    authorize @game
    if @game.save
      flash[:notice] = "Invitation bien envoyee a #{opponent_team.name}"
      redirect_to teams_path
    else
      flash[:alert] = "Il y a eu un probleme"
      render :new
    end
  end

  def accept
    @game = Game.find(params[:id])
    authorize @game
    @game.update(status: "accept")

    redirect_to teams_path
  end

  def reject
    @game = Game.find(params[:id])
    authorize @game
    @game.update(status: "reject")

    redirect_to teams_path
  end

private
  def game_params
    params.require(:game).permit(:requester_id, :opponent_id, :status)
  end

end
