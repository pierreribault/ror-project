class UsersController < ApplicationController
  layout 'dashboard'

  def index
    @user = current_user
  end

  def add_movie
    @user = current_user
    @movies = Movie.all
  end

  def save_movie
    movie_id = params[:user][:movie_id]
    user_id = current_user.id.to_s
    MoviesUser.create :user_id => user_id, :movie_id => movie_id

    redirect_to videotec_path
  end
end
