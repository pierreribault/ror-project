class BorrowsController < ApplicationController
  layout 'dashboard'

  def new
    @borrow = Borrow.new
    @movies_user = MoviesUser.where(user_id: params[:user_id], movie_id: params[:movie_id]).take()

    @movie = Movie.find(params[:movie_id])
    @user = User.find(params[:user_id])
  end

  def create
    Borrow.create :movies_user_id => params[:borrow][:movies_user_id], :user_id => current_user.id, :status => false, :deadline => params[:borrow][:deadline]

    flash[:success] = 'Your request has been sent.'
    
    redirect_to videotec_path
  end
end