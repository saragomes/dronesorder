# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :drone do
    sequence(:name) {|n| "name_#{n}" }
    category 1
    price "9.99"
  end
end
