# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    name "MyString"
    description "MyString"
    logo "MyString"
    cc_auth_id "MyString"
    address1 "MyString"
    address2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    email "MyString"
    billing_address1 "MyString"
    billing_address2 "MyString"
    billing_city "MyString"
    billing_state "MyString"
    billing_zip "MyString"
    billing_phone "MyString"
    billing_email "MyString"
    user nil
  end
end
