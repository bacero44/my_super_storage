FactoryBot.define do
  factory :item do
    code { Faker::Bank.routing_number }
    name { Faker::Game.title  }
    description { Faker::Game.genre }
    current_price { Faker::Number.decimal(l_digits: 2) }
  end
end
