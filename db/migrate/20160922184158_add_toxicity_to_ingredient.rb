class AddToxicityToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :toxicity, :boolean
  end
end
