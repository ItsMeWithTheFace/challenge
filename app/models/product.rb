class Product < ApplicationRecord
  has_and_belongs_to_many :cart, through: :cart_product

  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :inventory_count
end
