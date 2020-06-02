class MoviesController < ApplicationController
  layout 'dashboard'

  def index
    if params[:search].present?
      @movies_title = Movie.where("title LIKE ?", "%#{params[:search]}%")
      @movies_actors = Movie.where("actors LIKE ?", "%#{params[:search]}%")
      @movies_director = Movie.where("director LIKE ?", "%#{params[:search]}%")

      render 'index_full'
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
