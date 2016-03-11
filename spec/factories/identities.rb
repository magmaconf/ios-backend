FactoryGirl.define do
  factory :identity do
    user
    name Faker::Name.name
    email Faker::Internet.email
    image '../test_img.png'
    provider 'email'
    uid Faker::Number.number(10)
  end
end