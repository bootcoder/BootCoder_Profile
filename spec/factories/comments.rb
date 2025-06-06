# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :comment do
    post { nil }
    body { "MyText" }
  end
end
