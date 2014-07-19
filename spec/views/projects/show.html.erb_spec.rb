require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_name => "Project Name",
      :project_description => "MyText",
      :project_feature_lang => "Project Feature Lang",
      :project_state => "Project State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Project Feature Lang/)
    rendered.should match(/Project State/)
  end
end
