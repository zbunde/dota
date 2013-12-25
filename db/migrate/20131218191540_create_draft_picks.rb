class CreateDraftPicks < ActiveRecord::Migration
  def change
    create_table :draft_picks do |t|
    	t.belongs_to :draft
    	t.belongs_to :hero
			t.timestamps
    end
  end
end
