# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    project_name "Test Project"
    project_description "This is a test project."
    project_feature_lang "Ruby"
    project_state "Pre-alpha"
    project_source_url "www.githubz.com"
    project_img "banner.png"
  end
end
