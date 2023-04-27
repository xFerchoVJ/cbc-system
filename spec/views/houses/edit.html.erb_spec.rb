require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  let(:house) {
    House.create!(
      title: "MyString",
      description: "MyString",
      admin: nil
    )
  }

  before(:each) do
    assign(:house, house)
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(house), "post" do

      assert_select "input[name=?]", "house[title]"

      assert_select "input[name=?]", "house[description]"

      assert_select "input[name=?]", "house[admin_id]"
    end
  end
end
