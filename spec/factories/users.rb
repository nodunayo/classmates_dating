# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "Nadia"
    last_name "Bar"
    email "nadia@foo.com"
    dob "1991-12-06 08:16:14"
    password "12345678"
    gender 'female'
    school
  end
end
