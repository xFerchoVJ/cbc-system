require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /Home" do
    it "returns http success" do
      get home_path
      expect(response).to have_http_status(:success)
    end
  end
end