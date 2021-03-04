class Label < ApplicationRecord
  has_many :labelings, dependent: :destroy
  has_many :posts, through: :labelings
end
