class Restaurant < ActiveRecord::Base
  has_many :menu_items

  validates :name, presence: true
  validates :address, presence: true
end
