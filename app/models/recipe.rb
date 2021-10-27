class Recipe < ApplicationRecord
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients


  validates :title, :directions, presence: true
  validates :title, uniqueness:true
end
