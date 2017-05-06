class Item < ApplicationRecord
  has_many :carts
  has_many :users, through: :carts

  has_many :purchaseds
  has_many :users, through: :purchaseds
end
