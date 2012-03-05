require "spec_helper"

describe PathoxsintomasController do
  describe "routing" do

    it "routes to #index" do
      get("/pathoxsintomas").should route_to("pathoxsintomas#index")
    end

    it "routes to #new" do
      get("/pathoxsintomas/new").should route_to("pathoxsintomas#new")
    end

    it "routes to #show" do
      get("/pathoxsintomas/1").should route_to("pathoxsintomas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pathoxsintomas/1/edit").should route_to("pathoxsintomas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pathoxsintomas").should route_to("pathoxsintomas#create")
    end

    it "routes to #update" do
      put("/pathoxsintomas/1").should route_to("pathoxsintomas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pathoxsintomas/1").should route_to("pathoxsintomas#destroy", :id => "1")
    end

  end
end
