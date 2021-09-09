class Jacket < ApplicationRecord
  validates :name, :description, :image_url, :price, presence: true

  has_many :whishlists, dependent: :destroy
end
