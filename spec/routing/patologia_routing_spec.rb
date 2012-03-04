require "spec_helper"

describe PatologiaController do
  describe "routing" do

    it "routes to #index" do
      get("/patologia").should route_to("patologia#index")
    end

    it "routes to #new" do
      get("/patologia/new").should route_to("patologia#new")
    end

    it "routes to #show" do
      get("/patologia/1").should route_to("patologia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patologia/1/edit").should route_to("patologia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patologia").should route_to("patologia#create")
    end

    it "routes to #update" do
      put("/patologia/1").should route_to("patologia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patologia/1").should route_to("patologia#destroy", :id => "1")
    end

  end
end
