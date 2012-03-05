require "spec_helper"

describe PathoxtratamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/pathoxtratamentos").should route_to("pathoxtratamentos#index")
    end

    it "routes to #new" do
      get("/pathoxtratamentos/new").should route_to("pathoxtratamentos#new")
    end

    it "routes to #show" do
      get("/pathoxtratamentos/1").should route_to("pathoxtratamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pathoxtratamentos/1/edit").should route_to("pathoxtratamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pathoxtratamentos").should route_to("pathoxtratamentos#create")
    end

    it "routes to #update" do
      put("/pathoxtratamentos/1").should route_to("pathoxtratamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pathoxtratamentos/1").should route_to("pathoxtratamentos#destroy", :id => "1")
    end

  end
end
