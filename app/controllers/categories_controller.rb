class CategoriesController < ApplicationController
  def index
    categories = Category.all.order(:id)
    render json: categories 
  end
end
