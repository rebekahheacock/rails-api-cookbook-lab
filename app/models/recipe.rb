class Recipe < ActiveRecord::Base
  has_many :ingredients, through: :amounts
  has_many :amounts, dependent: :destroy
end
