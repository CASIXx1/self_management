FactoryGirl.define do
  factory :custom do
    title { Faker::Lorem.characters(10) }
    description { Faker::Lorem.characters(255) }

    factory :valid_custom do
      after(:build) do |custom|
        custom.user = build(:user)
      end
    end
  end
end
