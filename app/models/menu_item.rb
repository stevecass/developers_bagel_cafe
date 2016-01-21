class MenuItem < ActiveRecord::Base
  has_many :menu_item_ingredients
  has_many :ingredients, through: :menu_item_ingredients  

  belongs_to :restaurant
end
