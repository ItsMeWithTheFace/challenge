class Cart < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :product, through: :cart_product
end
