class HomeController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index]

  def index
    unless current_user.nil?
      redirect_to movies_path
    end
  end
end
