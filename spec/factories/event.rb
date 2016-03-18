FactoryGirl.define do
  factory :event do
    name Faker::Name.name
    date Date.today
  end
end