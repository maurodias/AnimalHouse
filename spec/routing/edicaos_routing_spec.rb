require "spec_helper"

describe EdicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/edicaos").should route_to("edicaos#index")
    end

    it "routes to #new" do
      get("/edicaos/new").should route_to("edicaos#new")
    end

    it "routes to #show" do
      get("/edicaos/1").should route_to("edicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/edicaos/1/edit").should route_to("edicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/edicaos").should route_to("edicaos#create")
    end

    it "routes to #update" do
      put("/edicaos/1").should route_to("edicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/edicaos/1").should route_to("edicaos#destroy", :id => "1")
    end

  end
end
