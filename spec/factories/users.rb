FactoryBot.define do
  factory :user do
    nickname              {'test'}
    partner_nickname      {'test'}
    dating_day            {'2014-04-30'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
  end
end