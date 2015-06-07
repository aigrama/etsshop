class Category < ActiveRecord::Base
  has_many :products, :foreign_key => 'categories_id'


end
