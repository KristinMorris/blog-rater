class Comment < ApplicationRecord
  belongs_to :post

  validates :content, presence: true, length: {in: 1..360}
end
