require 'rails_helper'

RSpec.describe Cart, type: :model do
  # Association test
  # ensure Cart model has a m:m relationship with the Product model
  it { should have_and_belong_to_many(:product) }
  it { should belong_to(:user) }
  # Validation tests
  it { should validate_presence_of(:fulfilled) }
end
