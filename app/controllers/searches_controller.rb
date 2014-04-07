class SearchesController < ApplicationController

	def create
		redirect_to search_path(params[:search][:name])
	end
	
	def show
		@heroes = Search.new(params[:id]).heroes
	end
end