class Album < ApplicationRecord
  has_many_attached :images
  belongs_to :user

  validates :name, presence: true
  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 5, message: 'は1枚以上5枚以下にしてください' }
end
