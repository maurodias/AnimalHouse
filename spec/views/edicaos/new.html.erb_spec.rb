require 'spec_helper'

describe "edicaos/new" do
  before(:each) do
    assign(:edicao, stub_model(Edicao,
      :status => "MyString",
      :camposEditado => "MyString",
      :veterinario => nil,
      :item => nil
    ).as_new_record)
  end

  it "renders new edicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => edicaos_path, :method => "post" do
      assert_select "input#edicao_status", :name => "edicao[status]"
      assert_select "input#edicao_camposEditado", :name => "edicao[camposEditado]"
      assert_select "input#edicao_veterinario", :name => "edicao[veterinario]"
      assert_select "input#edicao_item", :name => "edicao[item]"
    end
  end
end
