require 'rails_helper'

RSpec.describe "cover_letters/new", type: :view do
  before(:each) do
    assign(:cover_letter, CoverLetter.new(
      title: "MyString",
      resume: nil,
      file_name: "MyString",
      version: 1
    ))
  end

  it "renders new cover_letter form" do
    render

    assert_select "form[action=?][method=?]", cover_letters_path, "post" do

      assert_select "input[name=?]", "cover_letter[title]"

      assert_select "input[name=?]", "cover_letter[resume_id]"

      assert_select "input[name=?]", "cover_letter[file_name]"

      assert_select "input[name=?]", "cover_letter[version]"
    end
  end
end
