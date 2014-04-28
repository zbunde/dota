class SearchesController < ApplicationController


	def create
		redirect_to search_path(params[:search][:name])
	end
	
	def show
    if session[:user_id]
      @user_id = User.find(session[:user_id])
      @heroes = Search.new(params[:id]).heroes
    else
  redirect_to '/', notice: "Users only can access this page"
  end
end
end