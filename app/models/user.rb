class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 16 } 
  validates :last_name, presence: true, length: { maximum : 16 }
  validates :user_name, presence: true, length: { in 4..20 }
  validates :password, presence: true, length: { in 6..20 }
  validates :email, presence: true, uniqueness: true
end
