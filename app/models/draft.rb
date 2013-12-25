class Draft < ActiveRecord::Base
  belongs_to :user
  has_many :draft_picks
  has_many :draft_bans
  has_many :picks, through: :draft_picks #source: :hero
  has_many :bans, through: :draft_bans   #source: :hero

  validates :user, presence: true
  validate :ensure_length_of_picks
  validate :ensure_length_of_bans
end