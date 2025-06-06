# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
  end
end
