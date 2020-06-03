class BorrowNotifierMailer < ApplicationMailer
  default :from => 'no-reply@movy.com'

  def send_request_email(user)
    @user = user
    mail( :to => @user.email, :subject => 'A new borrowing request arrived' )
  end
end
