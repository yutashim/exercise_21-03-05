class Post < ApplicationRecord
  has_many :labelings, dependent: :destroy
  has_many :labels, through: :labelings
  has_many :private_labels, class_name: 'Label', foreign_key: 'creator_id'
end
