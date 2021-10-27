class Recipe < ApplicationRecord
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients


  validates :title, :directions, presence: true
  validates :title, uniqueness:true


  def recipe_params
    params.require(:recipe).permit(:title, :directions, :search)
  end

  def self.search(search)
    if search
      recipe = Recipe.find_by(title: search)
      if recipe
        self.where(title: recipe)
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end
end
