class MenuItemIngredients < ActiveRecord::Migration
  def change
    create_table :menu_item_ingredients do |t|
      t.integer :menu_item_id, null: false
      t.integer :ingredient_id, null: false
    end
  end
end
