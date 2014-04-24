class SearchesController < ApplicationController

	def create
		redirect_to search_path(params[:search][:name])
	end
	
	def show
		@heroes = Search.new(params[:id]).heroes
    if session[:user_id]
    @user = User.find(session[:user_id])
  end

  end
end