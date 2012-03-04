require "spec_helper"

describe PatologiasController do
  describe "routing" do

    it "routes to #index" do
      get("/patologias").should route_to("patologias#index")
    end

    it "routes to #new" do
      get("/patologias/new").should route_to("patologias#new")
    end

    it "routes to #show" do
      get("/patologias/1").should route_to("patologias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patologias/1/edit").should route_to("patologias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patologias").should route_to("patologias#create")
    end

    it "routes to #update" do
      put("/patologias/1").should route_to("patologias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patologias/1").should route_to("patologias#destroy", :id => "1")
    end

  end
end
