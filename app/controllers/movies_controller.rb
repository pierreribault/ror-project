class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(params.require(:movie).permit(:title, :year, :genre, :plot, :director, :poster, :actors, :runtime))
    if @movie.valid?
      redirect_to movies_path
    else
      flash[:error] = @movie.errors.full_messages
      redirect_to new_movies_path
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
