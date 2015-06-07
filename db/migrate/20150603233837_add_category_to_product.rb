class AddCategoryToProduct < ActiveRecord::Migration
  def self.up
    add_reference :products, :categories
  end
  def self.down
    remove_reference :products, :categories
  end
end
