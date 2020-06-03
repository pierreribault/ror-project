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
    @user = Array.new

    @movie.user.each do |user|
      user_info = Hash.new

      user_info["user"] = user
      user_info["available"] = !Borrow.where(movie_id: @movie.id.to_s).where(user_id: user.id.to_s).where("deadline > '#{Date.current}'").where("status > 1").exists?
      user_info["shared"] = Borrow.where(movie_id: @movie.id.to_s).where(user_id: user.id.to_s).where(status: 3).count

      @user.push(user_info)
    end

  end
end
