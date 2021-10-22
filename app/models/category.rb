class Category < ApplicationRecord
  has_many :recipes
  validates :category, presence: true, uniqueness: true
end
