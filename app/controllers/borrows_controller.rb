class BorrowsController < ApplicationController
  layout 'dashboard'

  def new
    @borrow = Borrow.new
    @movie = Movie.find(params[:movie_id])
    @user = User.find(params[:user_id])
  end

  def create
    Borrow.create :movie_id => params[:borrow][:movie_id], :owner_id => params[:borrow][:owner_id], :user_id => current_user.id, :status => false, :deadline => params[:borrow][:deadline]

    flash[:success] = 'Your request has been sent.'

    BorrowNotifierMailer.send_request_email(User.find(params[:borrow][:owner_id])).deliver
    redirect_to videotec_path
  end
end