class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: {in: 2..70}, uniqueness: true
  validates :email, presence: true, length: {in: 2..70}, uniqueness: true
end
