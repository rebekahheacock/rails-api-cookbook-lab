class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :amounts
  has_many :amounts, dependent: :destroy
end
