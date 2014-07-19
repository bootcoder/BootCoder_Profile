# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    project_name "MyString"
    project_description "MyText"
    project_feature_lang "MyString"
    project_state "MyString"
  end
end
