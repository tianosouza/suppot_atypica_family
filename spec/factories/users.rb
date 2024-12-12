FactoryBot.define do
  factory :user do
    first_name { |n| "Fulano_#{n}" }
    last_name { "Syestem" }
    sequence(:username) { |n| "fulano_#{n}" }
    sequence(:email) { |n| "fulano_#{n}00@support.com" }
    password_digest { "123456" }
    password_confirmation { "123456" }
  end
end
