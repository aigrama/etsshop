class ProductsController < ApplicationController
  include CategoriesHelper

  helper_method :selected_category
  def index
    @products = Product.all
    categories_list

    @order_item = current_order.order_items.new

  end
  def selected_category
    session_selected_category
  end
end
