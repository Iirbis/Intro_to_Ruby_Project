class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:category).paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
