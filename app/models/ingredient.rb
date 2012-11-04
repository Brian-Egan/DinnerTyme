# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  unit       :string(255)
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_ids :integer
#

class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :name, :unit, :recipe_ids
  has_and_belongs_to_many :recipes
end
