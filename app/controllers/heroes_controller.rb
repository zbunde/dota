class HeroesController < ApplicationController
	helper_method :heroes, :hero
	respond_to :html

	def new
		@hero = Hero.new
	end

	def create
		@hero = Hero.create(hero_params)
		respond_with @hero
	end

	def edit
		@hero = hero
	end

	def update
		@hero = hero
		hero.update_attributes(hero_params)
		respond_with hero
	end

	def destroy
		hero.destroy
		redirect_to heroes_path
	end

	private

	def hero_params
		params.require(:hero).permit(:name, :summary, :hero_type, :thumbnail)
	end

	def heroes
		@_heroes ||= Hero.all
	end

	def hero
		@_hero ||= Hero.find(params[:id])
	end
end