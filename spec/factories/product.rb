FactoryBot.define do
  factory :product do
    title { Faker::Zelda.item }
    price { Faker::Number.decimal(2).positive }
    inventory_count { Faker::Number.between(0, 999) }
  end
end
