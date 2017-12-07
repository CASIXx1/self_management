require "rails_helper"

RSpec.describe CustomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/customs").to route_to("customs#index")
    end

    it "routes to #new" do
      expect(get: "/customs/new").to route_to("customs#new")
    end

    it "routes to #show" do
      expect(get: "/customs/1").to route_to("customs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/customs/1/edit").to route_to("customs#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/customs").to route_to("customs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/customs/1").to route_to("customs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/customs/1").to route_to("customs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/customs/1").to route_to("customs#destroy", id: "1")
    end

  end
end
