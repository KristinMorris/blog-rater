class Comment < ApplicationRecord
  belongs_to :post

  validates :body, presence: true, length: {in: 1..360}
end
