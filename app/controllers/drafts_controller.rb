class DraftsController < ApplicationController
	def new
		@draft = Draft.new
		@heroes = Hero.all
	end

	def create
		@draft        = Draft.create(draft_params)
	  if @draft.save == true
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
