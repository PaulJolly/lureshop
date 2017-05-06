class User < ApplicationRecord
  has_many :carts
  has_many :items, through: :carts

  has_many :purchaseds
  has_many :items, through: :purchaseds
end
