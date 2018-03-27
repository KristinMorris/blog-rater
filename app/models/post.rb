class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  attr_accessor :image
  serialize :image, JSON

  mount_uploader :image, ImageUploader
end
