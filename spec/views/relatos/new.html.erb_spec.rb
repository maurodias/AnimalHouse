require 'spec_helper'

describe "relatos/new" do
  before(:each) do
    assign(:relato, stub_model(Relato,
      :detalhes => "MyString",
      :item => nil,
      :patologia => nil
    ).as_new_record)
  end

  it "renders new relato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relatos_path, :method => "post" do
      assert_select "input#relato_detalhes", :name => "relato[detalhes]"
      assert_select "input#relato_item", :name => "relato[item]"
      assert_select "input#relato_patologia", :name => "relato[patologia]"
    end
  end
end
