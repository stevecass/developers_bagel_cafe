class User < ActiveRecord::Base
  include BCrypt
  
  has_many :restaurants, foreign_key: 'owner_id'

  def full_name
    "#{first_name} #{last_name}"
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
