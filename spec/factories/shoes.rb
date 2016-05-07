FactoryGirl.define do
  factory :shoe do
    sequence(:name) { |n| "Nike" }
    shoe_code 'MX608V4'
    price 125.00
    brand
  end
end