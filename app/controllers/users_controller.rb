class UsersController < ApplicationController
  layout 'dashboard'

  def index
    @user = current_user
    @shared = Borrow.where(owner_id: @user.id).where(status: 3).count
    @borrow = Borrow.where(owner_id: @user.id).where(status: 2).count
  end

  def add_movie
    @user = current_user
    @movies = Movie.all
  end

  def save_movie
    movie_id = params[:user][:movie_id]
    user_id = current_user.id.to_s
    MoviesUser.create :user_id => user_id, :movie_id => movie_id

    flash[:success] = 'Movie was successfully added.'
    redirect_to videotec_path
  end

  def notification
    @borrow = Borrow.new
    @user = current_user
    @notification = Array.new

    Borrow.where(user_id: @user.id).where(status: 0).each do |notification|
      request = Hash.new

      request["notification"] = notification
      request["movie"] = Movie.find(notification.movie_id)
      request["user"] = User.find(notification.user_id)

      @notification.push(request)
    end
  end
end
