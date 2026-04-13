require 'rails_helper'

RSpec.describe "resumes/show", type: :view do
  before(:each) do
    assign(:resume, Resume.create!(
      title: "Title",
      file_name: "File Name",
      download_count: 2,
      version: 3,
      company: "Company"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Company/)
  end
end
