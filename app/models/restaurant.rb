class Restaurant < ApplicationRecord
  RESTAURANT_CATS = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: RESTAURANT_CATS, allow_nil: false}
end
