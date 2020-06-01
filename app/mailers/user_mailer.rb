class UserMailer < ApplicationMailer
  default from: 'test@example.com'

  def send_welcome_email(user)
    @user = user
    @url = "ror.lndo.site"
    mail(:to => @user.email, :subject => "Welcome!")
  end

end
