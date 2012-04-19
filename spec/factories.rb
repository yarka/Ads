FactoryGirl.define do
  factory :ad_example, :class => Ad do
    title 'SuperTestText'
    description 'Test description'
    price 10.15
    association :adtype, factory: :adtype_example
  end

  factory :adtype_example, :class => Adtype do
    name 'Test type'
  end

  factory :admin, :class => User do
    email "admin@admin.com"
    password "password"
    password_confirmation "password"
    first_name "admin"
    role "admin"
  end
end