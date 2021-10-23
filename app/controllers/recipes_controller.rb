class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:category).all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
