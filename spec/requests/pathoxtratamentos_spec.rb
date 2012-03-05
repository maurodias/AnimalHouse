require 'spec_helper'

describe "Pathoxtratamentos" do
  describe "GET /pathoxtratamentos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pathoxtratamentos_path
      response.status.should be(200)
    end
  end
end
