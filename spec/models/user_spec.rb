require 'rails_helper'

RSpec.describe User, type: :model do
  # Association Tests
  # User should have 1:m relationship with Cart
  it { should have_many(:cart) }
end
