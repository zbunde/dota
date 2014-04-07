class UserSearchesController < ApplicationController

  def create
    redirect_to user_search_path(params[:user_search][:username])
  end

  def show
    @users = UserSearch.new(params[:id]).users
  end
end