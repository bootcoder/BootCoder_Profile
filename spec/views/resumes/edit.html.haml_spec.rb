require 'rails_helper'

RSpec.describe "resumes/edit", type: :view do
  let(:resume) {
    Resume.create!(
      title: "MyString",
      file_name: "MyString",
      download_count: 1,
      version: 1,
      company: "MyString"
    )
  }

  before(:each) do
    assign(:resume, resume)
  end

  it "renders the edit resume form" do
    render

    assert_select "form[action=?][method=?]", resume_path(resume), "post" do

      assert_select "input[name=?]", "resume[title]"

      assert_select "input[name=?]", "resume[file_name]"

      assert_select "input[name=?]", "resume[download_count]"

      assert_select "input[name=?]", "resume[version]"

      assert_select "input[name=?]", "resume[company]"
    end
  end
end
