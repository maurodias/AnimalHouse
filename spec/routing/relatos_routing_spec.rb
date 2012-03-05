require "spec_helper"

describe RelatosController do
  describe "routing" do

    it "routes to #index" do
      get("/relatos").should route_to("relatos#index")
    end

    it "routes to #new" do
      get("/relatos/new").should route_to("relatos#new")
    end

    it "routes to #show" do
      get("/relatos/1").should route_to("relatos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relatos/1/edit").should route_to("relatos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relatos").should route_to("relatos#create")
    end

    it "routes to #update" do
      put("/relatos/1").should route_to("relatos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relatos/1").should route_to("relatos#destroy", :id => "1")
    end

  end
end
