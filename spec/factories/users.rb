FactoryBot.define do
  factory :user do
    nickname              {'test'}
    partner_nickname      {'test'}
    dating_day            {'2000-01-01'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
  end
end