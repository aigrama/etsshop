class CategoriesController < ApplicationController
  include CategoriesHelper
  helper_method :selected_category

  def index
    categories_list
    selected_category
  end

  def show
    categories_list
    session[:category_id] = Category.find(params[:id]).id
    selected_category
    respond_to do |format|
      format.html do
        redirect_to '/'
      end

    end
  end
  def selected_category
    session_selected_category
  end



end
