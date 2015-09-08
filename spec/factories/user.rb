require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email 'raph@test.com'
    password '12345'
    password_confirmation '12345'
    name 'Raph'
  end

  factory :user_2, parent: :user do
    email 'owen@test.com'
    password '7890'
    password_confirmation '12345'
    name 'Owen'
  end
end
