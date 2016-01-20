class MenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id, null: false
      t.string  :name,          null: false
      t.string  :description,   null: false
      t.decimal :price,         null: false, precision: 8, scale: 2
      t.timestamps null: false
    end
  end
end
