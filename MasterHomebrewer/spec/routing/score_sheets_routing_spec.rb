require "rails_helper"

RSpec.describe ScoreSheetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/score_sheets").to route_to("score_sheets#index")
    end

    it "routes to #new" do
      expect(get: "/score_sheets/new").to route_to("score_sheets#new")
    end

    it "routes to #show" do
      expect(get: "/score_sheets/1").to route_to("score_sheets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/score_sheets/1/edit").to route_to("score_sheets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/score_sheets").to route_to("score_sheets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/score_sheets/1").to route_to("score_sheets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/score_sheets/1").to route_to("score_sheets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/score_sheets/1").to route_to("score_sheets#destroy", id: "1")
    end
  end
end
