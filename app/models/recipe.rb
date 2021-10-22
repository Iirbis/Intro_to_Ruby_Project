class Recipe < ApplicationRecord
  belongs_to :category
  validates :title, :directions, presence: true, uniqueness: true
end
