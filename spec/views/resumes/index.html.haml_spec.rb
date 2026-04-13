require 'rails_helper'

RSpec.describe "resumes/index", type: :view do
  before(:each) do
    assign(:resumes, [
      Resume.create!(
        title: "Title",
        file_name: "File Name",
        download_count: 2,
        version: 3,
        company: "Company"
      ),
      Resume.create!(
        title: "Title",
        file_name: "File Name",
        download_count: 2,
        version: 3,
        company: "Company"
      )
    ])
  end

  it "renders a list of resumes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Company".to_s), count: 2
  end
end
