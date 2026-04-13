require 'rails_helper'

RSpec.describe "cover_letters/edit", type: :view do
  let(:cover_letter) {
    CoverLetter.create!(
      title: "MyString",
      resume: nil,
      file_name: "MyString",
      version: 1
    )
  }

  before(:each) do
    assign(:cover_letter, cover_letter)
  end

  it "renders the edit cover_letter form" do
    render

    assert_select "form[action=?][method=?]", cover_letter_path(cover_letter), "post" do

      assert_select "input[name=?]", "cover_letter[title]"

      assert_select "input[name=?]", "cover_letter[resume_id]"

      assert_select "input[name=?]", "cover_letter[file_name]"

      assert_select "input[name=?]", "cover_letter[version]"
    end
  end
end
