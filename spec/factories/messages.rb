# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    sender nil
    recipient nil
    body "MyText"
  end
end
