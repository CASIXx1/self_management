require 'rails_helper'

RSpec.describe "Dairies", type: :request do
  describe "GET /dairies" do
    it "works! (now write some real specs)" do
      get dairies_path
      expect(response).to have_http_status(200)
    end
  end
end
