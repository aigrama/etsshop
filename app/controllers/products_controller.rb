class ProductsController < ApplicationController
  include CategoriesHelper

  helper_method :selected_category
  def index

    categories_list
    selected_category
    @order_item = current_order.order_items.new


    if session[:category_id] == 0
      @products = Product.all
    else
      @products = Product.from_category(session[:category_id])
    end

  end
  def selected_category
    session_selected_category
  end
end
