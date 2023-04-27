require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      title: "MyString",
      description: "MyString",
      admin: nil
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input[name=?]", "house[title]"

      assert_select "input[name=?]", "house[description]"

      assert_select "input[name=?]", "house[admin_id]"
    end
  end
end
