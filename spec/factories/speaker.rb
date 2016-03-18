FactoryGirl.define do
  factory :speaker do
    name Faker::Name.name
    twitter_account '@test'
    image Faker::Avatar.image
  end
end