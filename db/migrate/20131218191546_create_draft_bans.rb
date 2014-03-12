class CreateDraftBans < ActiveRecord::Migration
  def change
    create_table :draft_bans do |t|
    	t.belongs_to :draft
    	t.belongs_to :hero

      t.timestamps
    end
  end
end
