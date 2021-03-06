class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :email, presence: true,
                    length: { maximum: 30 }
  validates :password, presence: true,
                       length: { minimum: 4 }
end
