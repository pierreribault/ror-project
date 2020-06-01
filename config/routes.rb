Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  get 'movies', to: 'movies#index'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  get 'videotec', to: 'users#index'

  root :to => "home#index"
end
