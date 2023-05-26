class House < ApplicationRecord
  belongs_to :admin
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 250}
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 999999.99 }
  
  has_rich_text :description
  has_one_attached :image
  has_many_attached :pictures
end
