FactoryGirl.define do
  factory :check do
    continue { Faker::Boolean.boolean(0.2) }

    factory :valid_check do
      after(:build) do |check|
        check.dairy = build(:valid_dairy)
        check.custom = build(:valid_custom)
      end
    end
  end
end
