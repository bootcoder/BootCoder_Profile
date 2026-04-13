require 'rails_helper'

RSpec.describe "cover_letters/index", type: :view do
  before(:each) do
    assign(:cover_letters, [
      CoverLetter.create!(
        title: "Title",
        resume: nil,
        file_name: "File Name",
        version: 2
      ),
      CoverLetter.create!(
        title: "Title",
        resume: nil,
        file_name: "File Name",
        version: 2
      )
    ])
  end

  it "renders a list of cover_letters" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
