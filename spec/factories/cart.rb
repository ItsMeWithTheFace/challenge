FactoryBot.define do
  factory :cart do
    fulfilled { Faker::Boolean.boolean }
  end
end
