require "spec_helper"

describe ItemlinksController do
  describe "routing" do

    it "routes to #index" do
      get("/itemlinks").should route_to("itemlinks#index")
    end

    it "routes to #new" do
      get("/itemlinks/new").should route_to("itemlinks#new")
    end

    it "routes to #show" do
      get("/itemlinks/1").should route_to("itemlinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itemlinks/1/edit").should route_to("itemlinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itemlinks").should route_to("itemlinks#create")
    end

    it "routes to #update" do
      put("/itemlinks/1").should route_to("itemlinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itemlinks/1").should route_to("itemlinks#destroy", :id => "1")
    end

  end
end
