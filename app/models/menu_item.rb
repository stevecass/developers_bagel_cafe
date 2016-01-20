class MenuItem < ActiveRecord::Base
  belongs_to :restaurant
  
  has_many :menu_item_ingredients
  has_many :ingredients, through: :menu_item_ingredients

  # Remember to create a migration!
end
