require 'rails_helper'

RSpec.describe "Clubs", type: :request do
  describe "GET /clubs" do
    it "works! (now write some real specs)" do
      get clubs_path
      expect(response).to have_http_status(200)
    end
  end
end
