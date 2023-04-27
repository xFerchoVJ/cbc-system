require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        title: "Title",
        description: "Description",
        admin: nil
      ),
      House.create!(
        title: "Title",
        description: "Description",
        admin: nil
      )
    ])
  end

  it "renders a list of houses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
