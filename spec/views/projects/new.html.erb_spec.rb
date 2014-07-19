require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :project_name => "MyString",
      :project_description => "MyText",
      :project_feature_lang => "MyString",
      :project_state => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_project_name[name=?]", "project[project_name]"
      assert_select "textarea#project_project_description[name=?]", "project[project_description]"
      assert_select "input#project_project_feature_lang[name=?]", "project[project_feature_lang]"
      assert_select "input#project_project_state[name=?]", "project[project_state]"
    end
  end
end
