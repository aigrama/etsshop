class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :category,:foreign_key => 'categories_id'
  validate :category_present
  validate :category_different_from_all
  scope :from_category, -> (cat_id) { where categories_id: cat_id }

private
  def category_present
    if self.category.nil?
      errors.add  :category, "There's no category like that"
    end
  end

  def category_different_from_all
    if !self.category.nil? and self.category.id == 0
      errors.add :category, 'This product is on all category, no specific category'
    end
  end



  default_scope { where(active: true) }
end
