class BorrowNotifierMailer < ApplicationMailer
  default :from => 'no-reply@movy.com'

  def send_request_email(user, movie, deadline, owner)
    @user = user
    @movie = movie
    @deadline = deadline
    @owner = owner
    mail( :to => @owner.email, :subject => 'A new borrowing request is arrived' )
  end

  def send_request_accepted(user, movie, borrow, owner)
    @user = user
    @movie = movie
    @borrow = borrow
    @owner = owner
    mail( :to => @user.email, :subject => "Your request for #{@movie.title} has been accepted!")
  end

  def send_request_declined(user, movie, borrow, owner)
    @user = user
    @movie = movie
    @borrow = borrow
    @owner = owner
    mail( :to => @user.email, :subject => "Your request for #{@movie.title} has been declined!")
  end

  def send_user_address(user, movie, borrow, owner)
    @user = user
    @movie = movie
    @borrow = borrow
    @owner = owner
    mail( :to => @owner.email, :subject => "It's time to send #{@movie.title}!")
  end
end
