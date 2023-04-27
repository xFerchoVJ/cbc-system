class House < ApplicationRecord
  belongs_to :admin
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 250}
end
