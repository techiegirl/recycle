# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state_recycle_law do
    item_id 1
    state_name "MyString"
    state_abr "MyString"
    description "MyText"
  end
end
