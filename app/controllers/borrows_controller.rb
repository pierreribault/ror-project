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

  def edit
    status = (params[:commit] == "Accept") ? 2 : 1
    request = Borrow.find(params[:borrow][:borrow_id])
    owner = User.find(request.owner_id)
    user = User.find(request.user_id)
    movie = Movie.find(request.movie_id)


    request.status = status
    request.save

    if status == 2
      BorrowNotifierMailer.send_request_accepted(user, movie, request, owner).deliver
      BorrowNotifierMailer.send_user_address(user, movie, request, owner).deliver
      flash[:info] = 'You will receive the address by mail'
    else
      BorrowNotifierMailer.send_request_declined(user, movie, request, owner).deliver
      flash[:success] = 'You have declined the request'
    end

    redirect_to notification_path
  end
end