class Amount < ActiveRecord::Base
  belongs_to :recipe, inverse_of: :amounts
  belongs_to :ingredient, inverse_of: :amounts
end
