class AddRecipeIdToIngredients < ActiveRecord::Migration
  def change
    #add_column :ingredients, :recipe_id, :integer
    add_reference :ingredients, :recipe, index: true, foreign_key: true
  end
end
