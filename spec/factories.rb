FactoryGirl.define do
  factory :ad_example, :class => Ad do
    title 'SuperTestText'
    description 'Test description'
    price 10.15
  end

  factory :adtype_example, :class => Adtype do
    name 'Test type'
  end
end