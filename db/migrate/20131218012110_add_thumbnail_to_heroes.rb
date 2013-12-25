class AddThumbnailToHeroes < ActiveRecord::Migration
  def change
  	change_table :heroes do |t|
  		t.attachment :thumbnail
  	end
  end
end
