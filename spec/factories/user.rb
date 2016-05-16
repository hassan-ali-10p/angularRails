require 'faker'

FactoryGirl.define do
  factory :user do
    name "hassan"
    email { Faker::Internet.email }
    password { Faker::Internet.password(8) }
    password_confirmation { password }

    factory :confirmed_user, parent: :user do
      confirmed_at Time.now
    end
  end
end
