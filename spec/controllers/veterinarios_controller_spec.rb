require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe VeterinariosController do

  # This should return the minimal set of attributes required to create a valid
  # Veterinario. As you add validations to Veterinario, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VeterinariosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all veterinarios as @veterinarios" do
      veterinario = Veterinario.create! valid_attributes
      get :index, {}, valid_session
      assigns(:veterinarios).should eq([veterinario])
    end
  end

  describe "GET show" do
    it "assigns the requested veterinario as @veterinario" do
      veterinario = Veterinario.create! valid_attributes
      get :show, {:id => veterinario.to_param}, valid_session
      assigns(:veterinario).should eq(veterinario)
    end
  end

  describe "GET new" do
    it "assigns a new veterinario as @veterinario" do
      get :new, {}, valid_session
      assigns(:veterinario).should be_a_new(Veterinario)
    end
  end

  describe "GET edit" do
    it "assigns the requested veterinario as @veterinario" do
      veterinario = Veterinario.create! valid_attributes
      get :edit, {:id => veterinario.to_param}, valid_session
      assigns(:veterinario).should eq(veterinario)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Veterinario" do
        expect {
          post :create, {:veterinario => valid_attributes}, valid_session
        }.to change(Veterinario, :count).by(1)
      end

      it "assigns a newly created veterinario as @veterinario" do
        post :create, {:veterinario => valid_attributes}, valid_session
        assigns(:veterinario).should be_a(Veterinario)
        assigns(:veterinario).should be_persisted
      end

      it "redirects to the created veterinario" do
        post :create, {:veterinario => valid_attributes}, valid_session
        response.should redirect_to(Veterinario.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved veterinario as @veterinario" do
        # Trigger the behavior that occurs when invalid params are submitted
        Veterinario.any_instance.stub(:save).and_return(false)
        post :create, {:veterinario => {}}, valid_session
        assigns(:veterinario).should be_a_new(Veterinario)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Veterinario.any_instance.stub(:save).and_return(false)
        post :create, {:veterinario => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested veterinario" do
        veterinario = Veterinario.create! valid_attributes
        # Assuming there are no other veterinarios in the database, this
        # specifies that the Veterinario created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Veterinario.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => veterinario.to_param, :veterinario => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested veterinario as @veterinario" do
        veterinario = Veterinario.create! valid_attributes
        put :update, {:id => veterinario.to_param, :veterinario => valid_attributes}, valid_session
        assigns(:veterinario).should eq(veterinario)
      end

      it "redirects to the veterinario" do
        veterinario = Veterinario.create! valid_attributes
        put :update, {:id => veterinario.to_param, :veterinario => valid_attributes}, valid_session
        response.should redirect_to(veterinario)
      end
    end

    describe "with invalid params" do
      it "assigns the veterinario as @veterinario" do
        veterinario = Veterinario.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Veterinario.any_instance.stub(:save).and_return(false)
        put :update, {:id => veterinario.to_param, :veterinario => {}}, valid_session
        assigns(:veterinario).should eq(veterinario)
      end

      it "re-renders the 'edit' template" do
        veterinario = Veterinario.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Veterinario.any_instance.stub(:save).and_return(false)
        put :update, {:id => veterinario.to_param, :veterinario => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested veterinario" do
      veterinario = Veterinario.create! valid_attributes
      expect {
        delete :destroy, {:id => veterinario.to_param}, valid_session
      }.to change(Veterinario, :count).by(-1)
    end

    it "redirects to the veterinarios list" do
      veterinario = Veterinario.create! valid_attributes
      delete :destroy, {:id => veterinario.to_param}, valid_session
      response.should redirect_to(veterinarios_url)
    end
  end

end
