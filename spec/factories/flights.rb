# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flight do
		drone
    parcel
    order
    start_date "2014-07-09 02:54:45"
    end_date "2014-07-09 02:54:45"
    price "9.99"
  end
end
