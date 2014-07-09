# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parcel do
    client
    sequence(:name) {|n| "name_#{n}" }
    hectare 4
  end
end
