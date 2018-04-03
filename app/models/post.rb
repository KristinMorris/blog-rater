class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  acts_as_votable
  attr_accessor :image
  serialize :image, JSON


  mount_uploader :image, ImageUploader
end
