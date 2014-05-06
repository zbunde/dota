class DraftsController < ApplicationController


	def new
    @user1 = params[:user_1]
    @user2 = params[:user_2]
    @starting_heroes = Hero.all
    @level = 1
		@draft = Draft.new

  end


	def create
    @heroes = Hero.all
		@draft  = Draft.create(@heroes)

	  if @draft.save
      flash[:success] = "Your draft has been saved"
			redirect_to heroes_path
    else
      render :new and return
    end
  end

  def edit
		@hero = hero
	end

  def ensure_length_of_picks
    if picks.size > 5
      errors.add(:picks, 'Cannot pick more than 5 heroes')
    end
  end

  def ensure_length_of_bans
    if bans.size > 5
      errors.add(:bans, 'Cannot ban more than 5 heroes')
    end
  end
end
