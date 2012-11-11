class RemoveUneededColumns < ActiveRecord::Migration
  def change
  	remove_column :recipes, :ingredient_ids
  end
end
