require "spec_helper"

describe PathoxracasController do
  describe "routing" do

    it "routes to #index" do
      get("/pathoxracas").should route_to("pathoxracas#index")
    end

    it "routes to #new" do
      get("/pathoxracas/new").should route_to("pathoxracas#new")
    end

    it "routes to #show" do
      get("/pathoxracas/1").should route_to("pathoxracas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pathoxracas/1/edit").should route_to("pathoxracas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pathoxracas").should route_to("pathoxracas#create")
    end

    it "routes to #update" do
      put("/pathoxracas/1").should route_to("pathoxracas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pathoxracas/1").should route_to("pathoxracas#destroy", :id => "1")
    end

  end
end
