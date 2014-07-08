# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parcel do
    client_id 1
    name "MyString"
    hectare 1
  end
end
