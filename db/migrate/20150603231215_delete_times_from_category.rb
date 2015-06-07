class DeleteTimesFromCategory < ActiveRecord::Migration
  def self.up
    remove_column :categories, :created_at
  end

  def self.down
    add_column :categories, :created_at, :timestamp

  end
end
