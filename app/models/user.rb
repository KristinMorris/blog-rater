class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  # validates :username, presence: true, length: {in: 2..70}, uniqueness: true
  # validates :email, presence: true, length: {in: 2..70}, uniqueness: true
end
