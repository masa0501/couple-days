FactoryBot.define do
  factory :album do
    title            {'タイトル'}

    association :user

    after(:build) do |album|
      album.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
