FactoryGirl.define do
  factory :dairy do
    date '20171212'

    factory :valid_dairy do
      after(:build) do |dairy|
        dairy.user = build(:user)
      end
    end
  end
end
