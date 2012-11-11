class CreateJoinTable < ActiveRecord::Migration
  def change
  	create_table :recipes_ingredients, :id => false do |t|
	  t.references :apple, :null => false
	  t.references :orange, :null => false
  end
end



A has_and_belongs_to_many table must match this format. I'm assuming the two models to be joined by has_and_belongs_to_many are already in the DB : apples and oranges:

create_table :apples_oranges, :id => false do |t|
  t.references :apple, :null => false
  t.references :orange, :null => false
end

# Adding the index can massively speed up join tables. Don't use the
# unique if you allow duplicates.
add_index(:apples_oranges, [:apple_id, :orange_id], :unique => true)
If you use the :unique => true on the index, then you should (in rails3) pass :uniq => true to has_and_belongs_to_many.

More information: Rails Docs

UPDATED 2010-12-13 I've updated it to remove the id and timestamps... Basically MattDiPasquale and nunopolonia are correct: There must not be an id and there must not be timestamps or rails won't allow has_and_belongs_to_many to work.