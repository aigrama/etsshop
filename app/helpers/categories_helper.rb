module CategoriesHelper
  def categories_list
    @categories = Category.all
  end

  def session_selected_category
    if session[:category_id].nil?
      session[:category_id] = Category.first.id
    else
      session[:category_id]


    end
  end
end
