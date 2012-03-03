require "spec_helper"

describe RacasController do
  describe "routing" do

    it "routes to #index" do
      get("/racas").should route_to("racas#index")
    end

    it "routes to #new" do
      get("/racas/new").should route_to("racas#new")
    end

    it "routes to #show" do
      get("/racas/1").should route_to("racas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/racas/1/edit").should route_to("racas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/racas").should route_to("racas#create")
    end

    it "routes to #update" do
      put("/racas/1").should route_to("racas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/racas/1").should route_to("racas#destroy", :id => "1")
    end

  end
end
