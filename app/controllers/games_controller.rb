class GamesController < ApplicationController

  def new
    @current_team = Team.find(params[:team_id])
    @game = Game.new(requester: @current_team)
    authorize @game
    if params[:city].blank?
      @teams = Team.all - [@current_team]
    else
      @teams = Team.where(city: params[:city].capitalize)
    end
  end

  def create
    @current_team = Team.find(params[:team_id])
    opponent_team = Team.find(params[:opponent_id])

    @start_date = Date.civil(params["start_date"]["(1i)"].to_i,
                         params["start_date"]["(2i)"].to_i,
                         params["start_date"]["(3i)"].to_i)

    @game = Game.new(
      requester: @current_team,
      opponent: opponent_team,
      status: "pending",
      location: params[:location],
      start_date: @start_date
    )
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

  def edit
    @game = Game.find(params[:id])
    authorize @game
  end

  def update
    @game = Game.find(params[:id])
    authorize @game
    @game.update(winner_id: Team.find_by(name: params[:game][:winner_id]).id, status: "done", winner_score: params[:game][:winner_score], loser_score: params[:game][:loser_score])

    redirect_to teams_path
  end

private
  def game_params
    params.require(:game).permit(:requester_id, :opponent_id, :status, :winner, :winner_score, :loser_score, :location, :start_date)
  end

end
