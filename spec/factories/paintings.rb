# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :painting, :class => 'Paintings' do
    name "MyString"
    description "MyString"
  end
end
