class Draft < ActiveRecord::Base
  belongs_to :user

  has_many :draft_picks
  has_many :draft_bans
  has_many :picks, through: :draft_picks #source: :hero
  has_many :bans, through: :draft_bans #source: :hero

  validates :user, presence: true

  def initialize(user1, user2)
    @user1 = user1
    @user2 = user2
    @bans_for_user1 = []
    @bans_for_user2 = []
    @picks_for_user1 = []
    @picks_for_user2 = []
    @level = 1
  end

  def ban_for_user1(hero)
    @bans_for_user1 << hero

  end

  def ban_for_user2(hero)
    if !@bans_for_user1.include?(hero)
      @bans_for_user2 << hero
    end
  end

  def bans_for_user1
    @bans_for_user1
  end

  def bans_for_user2
    @bans_for_user2
  end

  def pick_for_user1(hero)
    @picks_for_user1 << hero
  end

  def pick_for_user2(hero)
    @picks_for_user2 << hero
  end

  def picks_for_user1
    @picks_for_user1
  end

  def picks_for_user2
    @picks_for_user2
  end

  def advance?
    @bans_for_user1.length == @bans_for_user2.length
  end
  
end


