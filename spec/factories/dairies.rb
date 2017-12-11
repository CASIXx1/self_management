FactoryGirl.define do
  factory :dairy do
    date { Faker::Date.between(2.days.ago, 2.days.from_now) }

    factory :valid_dairy do
      after(:build) do |dairy|
        dairy.user = build(:user)
      end
    end
  end
end
