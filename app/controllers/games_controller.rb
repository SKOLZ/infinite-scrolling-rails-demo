class GamesController < ApplicationController
  def index
    @games = Game.all.page;
    @endpoint = pagination_games_path
    @page_amount = @games.num_pages
  end

  def pagination
    games = Game.all.page(params[:page]);
    render partial: 'games/item', layout: false, collection: games
  end
end
