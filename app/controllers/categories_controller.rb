class CategoriesController < ApplicationController
  include CategoriesHelper
  helper_method :selected_category
  def index
    categories_list
    selected_category
  end

  def show
    categories_list
  end
  def selected_category
    session_selected_category
  end



end
