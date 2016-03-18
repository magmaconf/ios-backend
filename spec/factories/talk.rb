FactoryGirl.define do
  factory :talk do
    speaker
    event
    name Faker::Name.name
    description Faker::Lorem.paragraph(2)
    is_keynote false
    starts_at DateTime.now
    ends_at DateTime.now + 1.hour
    is_fav false
    is_canceled false
    has_feedback false
  end
end