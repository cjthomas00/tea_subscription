FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Tea.type }
    temperature { Faker::Number.within(range: 160..210) }
    brew_time { Faker::Number.within(range: 1..5) }
  end
end
