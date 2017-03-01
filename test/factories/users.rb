FactoryGirl.define do
  factory :user do
    username {Faker::Internet.unique.user_name}
    email_address {Faker::Internet.unique.email}
    bio {Faker::TwinPeaks.quote}
  end
end
