FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    identification { Faker::IDNumber.unique.valid }
  end
end