class Cart < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :product

  validates_presence_of :fulfilled
end
