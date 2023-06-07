FactoryBot.define do
  factory :subscription do
    title { Faker::Subscription.plan }
    price { Faker::Number.within(range: 9.99..100.00) }
    status { Faker::Subscription.status }
    frequency { Faker::Subscription.subscription_term }
    association :customer, factory: :customer
    association :tea, factory: :tea
  end
end
