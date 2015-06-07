class DeleteTimesFromCategory2 < ActiveRecord::Migration
  def self.up
    remove_column :categories, :updated_at
  end

  def self.down
    add_column :categories, :updated_at, :timestamp

  end
end
