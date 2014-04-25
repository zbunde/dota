class DraftsController < ApplicationController
	def new
    if session[:user_id]
      @user_id = User.find(session[:user_id])
    end

		@draft = Draft.new
    @heroes = Hero.all


  end


	def create
    @heroes = Hero.all
		@draft  = Draft.create(@heroes)
	  if @draft.save
      flash[:success] = "Your draft has been saved"
			redirect_to heroes_path and return
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
