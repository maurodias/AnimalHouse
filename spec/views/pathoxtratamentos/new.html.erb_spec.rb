require 'spec_helper'

describe "pathoxtratamentos/new" do
  before(:each) do
    assign(:pathoxtratamento, stub_model(Pathoxtratamento,
      :itemlink => nil,
      :patologia => nil,
      :tratamento => nil
    ).as_new_record)
  end

  it "renders new pathoxtratamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pathoxtratamentos_path, :method => "post" do
      assert_select "input#pathoxtratamento_itemlink", :name => "pathoxtratamento[itemlink]"
      assert_select "input#pathoxtratamento_patologia", :name => "pathoxtratamento[patologia]"
      assert_select "input#pathoxtratamento_tratamento", :name => "pathoxtratamento[tratamento]"
    end
  end
end
