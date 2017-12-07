FactoryGirl.define do
  factory :custom do
    title 'MyString'
    description 'MyText'

    factory :valid_custom do
      after(:build) do |custom|
        custom.user = build(:user)
      end
    end
  end
end
