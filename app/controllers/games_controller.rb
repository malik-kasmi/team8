class GamesController < ApplicationController

  def new
    @game = Game.new
    @teams = Team.all
  end

  def create
    @game = Game.new(game_params)
    @game.status = "pending"
    @game.save!

    redirect_to teams_path
  end

  def accept
    @game = Game.find(params[:id])
    @game.update(status: "accept")

    redirect_to teams_path
  end

  def reject
    @game = Game.find(params[:id])
    @game.update(status: "reject")

    redirect_to teams_path
  end

private
  def game_params
    params.require(:game).permit(:team1_id, :team2_id)
  end

end
