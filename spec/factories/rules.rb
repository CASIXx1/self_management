FactoryGirl.define do
  factory :rule do
    title { Faker::Lorem.characters(10) }
    description { Faker::Lorem.characters(255) }

    factory :valid_rule do
      after(:build) do |rule|
        rule.custom = build(:valid_custom)
      end
    end
  end
end
