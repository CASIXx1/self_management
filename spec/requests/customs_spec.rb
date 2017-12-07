require "rails_helper"

RSpec.describe "Customs", type: :request do
  describe "GET /customs" do
    it "works! (now write some real specs)" do
      get customs_path
      expect(response).to have_http_status(200)
    end
  end
end
