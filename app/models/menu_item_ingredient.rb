class MenuItemIngredient < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :ingredient
  # Remember to create a migration!
end
