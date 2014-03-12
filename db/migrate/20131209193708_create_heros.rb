  class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.text :summary
      t.string :hero_type
      t.string :thumbnail
      t.integer :number
      
      t.timestamps
    end
  end
end
