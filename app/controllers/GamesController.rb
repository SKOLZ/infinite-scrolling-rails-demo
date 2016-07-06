class GamesController < ApplicationController
  def index
    @games = Game.all.page;
    @endpoint = pagination_games_index_path
    @page_amount = @games.num_pages
  end

  def pagination
    games = Game.all.page(params[:page]);
    render 'games/_item', layout: false, locals: { collection: games }
  end
end
