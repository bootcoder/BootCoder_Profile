require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :project_name => "Project Name",
        :project_description => "MyText",
        :project_feature_lang => "Project Feature Lang",
        :project_state => "Project State"
      ),
      stub_model(Project,
        :project_name => "Project Name",
        :project_description => "MyText",
        :project_feature_lang => "Project Feature Lang",
        :project_state => "Project State"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Project Feature Lang".to_s, :count => 2
    assert_select "tr>td", :text => "Project State".to_s, :count => 2
  end
end
