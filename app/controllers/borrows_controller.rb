class BorrowsController < ApplicationController
  layout 'dashboard'

  def form
    @user_id = params[:user_id]
    @movie_id = params[:movie_id]

    @movie = Movie.where(id: [@movie_id])
    @user = User.where(id: [@user_id])
  end

  def store
    crt_user_id = current_user.id.to_s
    deadline = params[:deadline]
    movie_id = params[:movie_id]

    object = Borrow.new(:movie_user_id => 1, :user_id => 1, :status => false, :deadline => '2020/12/12')
    object.save
    
    flash[:success] = 'Your request has been sent.'
    
    redirect_to videotec_path
  end
end