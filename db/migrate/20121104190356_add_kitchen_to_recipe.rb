class AddKitchenToRecipe < ActiveRecord::Migration
  def change
  	add_column :recipes, :kitchen_id, :integer
  	add_column :recipes, :ingredient_ids, :integer
  	add_column :kitchens, :recipe_ids, :integer
  	add_column :ingredients, :recipe_ids, :integer
  end
end
