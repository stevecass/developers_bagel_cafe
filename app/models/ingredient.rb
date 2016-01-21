class Ingredient < ActiveRecord::Base
  has_many :menu_item_ingredients
  has_many :menu_items, through: :menu_item_ingredients

end
