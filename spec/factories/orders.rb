# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
		consultant
    client
		total_htt "9.99"
		total_htc "9.99"
		shipping "9.99"
    taxes "9.99"
    reductions "9.99"
  end
end
