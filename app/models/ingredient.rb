class Ingredient < ActiveRecord::Base
  has_many :many_item_ingredients
  has_many :menu_items, through: :many_item_ingredients
end
