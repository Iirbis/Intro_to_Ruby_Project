class Recipe < ApplicationRecord
  belongs_to :category
  validates :title, :directions, presence: true
  validates :title, uniqueness:true
end
