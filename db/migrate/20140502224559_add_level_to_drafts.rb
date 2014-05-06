class AddLevelToDrafts < ActiveRecord::Migration
  def change
    add_column(:drafts, :level, :integer, :default => 0)
  end
end
