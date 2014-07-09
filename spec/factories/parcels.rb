# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parcel do
    sequence(:client_id) { |n| n }
    sequence(:name) {|n| "name_#{n}" }
    sequence(:hectare) {|n| n }
  end
end
