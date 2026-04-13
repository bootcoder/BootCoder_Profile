require 'rails_helper'

RSpec.describe "cover_letters/show", type: :view do
  before(:each) do
    assign(:cover_letter, CoverLetter.create!(
      title: "Title",
      resume: nil,
      file_name: "File Name",
      version: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/2/)
  end
end
