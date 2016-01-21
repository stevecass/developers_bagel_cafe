class User < ActiveRecord::Base
  has_many :restaurants, foreign_key: 'owner_id'

  def full_name
    "#{first_name} #{last_name}"
  end
end
