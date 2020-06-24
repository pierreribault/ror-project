Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  get 'movies', to: 'movies#index'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  get 'videotec', to: 'users#index'
  get 'videotec/add', to: 'users#add_movie'
  get 'notification', to: 'users#notification'
  post 'videotec', to: 'users#save_movie'
  get 'borrows/new', to: 'borrows#new'
  post 'borrows', to: 'borrows#create'
  post 'borrows/answer', to: 'borrows#edit'
  root :to => "home#index"
end
