require 'spec_helper'

describe "pathoxtratamentos/edit" do
  before(:each) do
    @pathoxtratamento = assign(:pathoxtratamento, stub_model(Pathoxtratamento,
      :itemlink => nil,
      :patologia => nil,
      :tratamento => nil
    ))
  end

  it "renders the edit pathoxtratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pathoxtratamentos_path(@pathoxtratamento), :method => "post" do
      assert_select "input#pathoxtratamento_itemlink", :name => "pathoxtratamento[itemlink]"
      assert_select "input#pathoxtratamento_patologia", :name => "pathoxtratamento[patologia]"
      assert_select "input#pathoxtratamento_tratamento", :name => "pathoxtratamento[tratamento]"
    end
  end
end
