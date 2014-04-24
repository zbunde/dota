class UserSearchesController < ApplicationController

  def create
    redirect_to user_search_path(params[:user_search][:username])
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @users = UserSearch.new(params[:id]).users
  end
end