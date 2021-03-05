class Label < ApplicationRecord
  has_many :labelings, dependent: :destroy
  has_many :posts, through: :labelings
  belongs_to :creator, class_name: 'Post', foreign_key: 'creator_id', optional: true
  validates :content, presence: true, length: {
    maximum: 15
  }
end
