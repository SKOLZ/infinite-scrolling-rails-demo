RailsBootstrap::Application.routes.draw do
  root to: 'games#index'

  resource :games, only: [:index] do
    get :pagination
  end

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
