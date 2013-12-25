class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
    	t.belongs_to :user

      t.timestamps
    end
  end
end
