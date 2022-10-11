FactoryBot.define do
  factory :event do
    title              { 'タイトル' }
    content            { '内容' }
    start_time         { Time.new.strftime('%H:%M') }

    association :user
  end
end
