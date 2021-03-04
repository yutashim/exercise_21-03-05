class Post < ApplicationRecord
  has_many :labelings
  has_many :labels, through: :labelings
end
