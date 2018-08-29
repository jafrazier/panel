class User < ApplicationRecord
  has_secure_password
  def User.digest(string)
    cost= ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :             BCrypt::Engine::min_cost
    BCrypt::Password.create(string, :cost, 'cost')
  end
end
