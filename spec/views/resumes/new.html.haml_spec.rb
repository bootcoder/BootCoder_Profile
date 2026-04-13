require 'rails_helper'

RSpec.describe "resumes/new", type: :view do
  before(:each) do
    assign(:resume, Resume.new(
      title: "MyString",
      file_name: "MyString",
      download_count: 1,
      version: 1,
      company: "MyString"
    ))
  end

  it "renders new resume form" do
    render

    assert_select "form[action=?][method=?]", resumes_path, "post" do

      assert_select "input[name=?]", "resume[title]"

      assert_select "input[name=?]", "resume[file_name]"

      assert_select "input[name=?]", "resume[download_count]"

      assert_select "input[name=?]", "resume[version]"

      assert_select "input[name=?]", "resume[company]"
    end
  end
end
