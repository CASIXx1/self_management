FactoryGirl.define do
  factory :rule do
    title 'MyString'
    description 'MyString'

    factory :valid_rule do
      after(:build) do |rule|
        rule.custom = build(:valid_custom)
      end
    end
  end
end
