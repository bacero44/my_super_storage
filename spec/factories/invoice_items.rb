FactoryBot.define do
  factory :invoice_item do
    invoice
    item
    qty { Faker::Number.within(range: 1..100) }
    price { Faker::Number.decimal(l_digits: 2) }
  end
end
