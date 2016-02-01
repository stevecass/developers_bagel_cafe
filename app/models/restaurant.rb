class Restaurant < ActiveRecord::Base
  has_many :menu_items
  belongs_to :owner, foreign_key: 'owner_id', class_name: 'User'

  validates :name, presence: true
  validates :address, presence: true

  def menu_by_price 
    menu_items.sort_by{ |item| item.price }
  end

  def menu_alphabetical
    menu_items.sort_by{ |item| item.name }
  end

end
