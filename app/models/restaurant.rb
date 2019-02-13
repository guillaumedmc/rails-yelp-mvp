class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  restaurant_category = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: restaurant_category }, presence: true
  validates :address, :name, presence: true
end
