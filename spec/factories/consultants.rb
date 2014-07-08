# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :consultant do
    sequence(:first_name) {|n| "first_name_#{n}"}
    sequence(:last_name) {|n| "last_name_#{n}"}
    sequence(:email) {|n| "email_#{n}@email.com"}
    sequence(:telephone) {|n| "01234569#{n}"}
  end
end
