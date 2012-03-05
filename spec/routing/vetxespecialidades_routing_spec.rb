require "spec_helper"

describe VetxespecialidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/vetxespecialidades").should route_to("vetxespecialidades#index")
    end

    it "routes to #new" do
      get("/vetxespecialidades/new").should route_to("vetxespecialidades#new")
    end

    it "routes to #show" do
      get("/vetxespecialidades/1").should route_to("vetxespecialidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vetxespecialidades/1/edit").should route_to("vetxespecialidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vetxespecialidades").should route_to("vetxespecialidades#create")
    end

    it "routes to #update" do
      put("/vetxespecialidades/1").should route_to("vetxespecialidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vetxespecialidades/1").should route_to("vetxespecialidades#destroy", :id => "1")
    end

  end
end
