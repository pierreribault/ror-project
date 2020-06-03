Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  get 'movies', to: 'movies#index'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  get 'videotec', to: 'users#index'
  get 'videotec/add', to: 'users#add_movie'
  post 'videotec', to: 'users#save_movie'
  get 'borrow', to: 'borrows#form'
  post 'ask-borrow', to: 'borrows#store'

  root :to => "home#index"
end
