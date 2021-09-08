class User < ApplicationRecord
    has_secure_password

  validates_presence_of :email
  validates_presence_of :username
  validates_uniqueness_of :email
  validates_uniqueness_of :username

  has_many :whishlists, dependent: :destroy
  has_many :jackets, through: :whishlists, source: 'jacket'
end
