class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:recipes)
  end

  def show
    @category = Category.find(params[:id])
  end
end
