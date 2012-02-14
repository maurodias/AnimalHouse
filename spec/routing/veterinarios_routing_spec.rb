require "spec_helper"

describe VeterinariosController do
  describe "routing" do

    it "routes to #index" do
      get("/veterinarios").should route_to("veterinarios#index")
    end

    it "routes to #new" do
      get("/veterinarios/new").should route_to("veterinarios#new")
    end

    it "routes to #show" do
      get("/veterinarios/1").should route_to("veterinarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/veterinarios/1/edit").should route_to("veterinarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/veterinarios").should route_to("veterinarios#create")
    end

    it "routes to #update" do
      put("/veterinarios/1").should route_to("veterinarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/veterinarios/1").should route_to("veterinarios#destroy", :id => "1")
    end

  end
end
