class Hero < ActiveRecord::Base
	has_attached_file :thumbnail
  validates_attachment_content_type :thumbnail, :content_type => %w(image/png)
  validates :name, :summary, :hero_type, :presence => true
end
