require 'rails_helper'

RSpec.describe Product, type: :model do
  # Association test
  # ensure Cart model has a m:m relationship with the Product model
  it { should have_and_belong_to_many(:cart) }
  # Validation tests
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:inventory_count) }
end
