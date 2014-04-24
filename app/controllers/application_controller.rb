class ApplicationController < ActionController::Base
 # protect_from_forgery with: :exception

  def index

    @user = User.find(session[:user_id])

  end

end
