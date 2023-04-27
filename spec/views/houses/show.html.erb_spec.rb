require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    assign(:house, House.create!(
      title: "Title",
      description: "Description",
      admin: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
