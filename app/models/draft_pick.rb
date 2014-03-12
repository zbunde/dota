class DraftPick < ActiveRecord::Base
  belongs_to :draft
  belongs_to :hero

  validates :draft, presence: true
  validates :hero, presence: true
end