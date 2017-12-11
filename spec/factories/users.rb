FactoryGirl.define do
  factory :user do
    id { |n| n }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password }
  end
end
