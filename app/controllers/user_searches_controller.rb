class UserSearchesController < ApplicationController

  def create
    redirect_to user_search_path(params[:user_search][:username])
  end

  def show
    if session[:user_id]
      @user_id = User.find(session[:user_id])
      @users = UserSearch.new(params[:id]).users
    else
   redirect_to '/', notice: "Only Users can access this page"
  end
end
end
