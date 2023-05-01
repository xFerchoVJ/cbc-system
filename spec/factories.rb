FactoryBot.define do
  factory :house do
    title { Faker::Address.city }
    description { Faker::Address.street_address }
    admin_id { Faker::Number.digit }
  end
end