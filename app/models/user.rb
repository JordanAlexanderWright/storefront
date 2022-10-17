class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 16 } 
  validates :last_name, presence: true, uniqueness: true, length: { maximum: 16 }
  validates :user_name, presence: true, length: { in: 4..20 }
  validates :password, presence: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true, length: {maximum: 105}, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password
end
