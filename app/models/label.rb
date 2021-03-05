class Label < ApplicationRecord
  has_many :labelings, dependent: :destroy
  has_many :posts, through: :labelings
  validates :content, presence: true, length: {
    maximum: 15
  }
end
