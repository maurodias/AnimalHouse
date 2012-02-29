require 'spec_helper'

describe "edicaos/edit" do
  before(:each) do
    @edicao = assign(:edicao, stub_model(Edicao,
      :status => "MyString",
      :camposEditado => "MyString",
      :veterinario => nil,
      :item => nil
    ))
  end

  it "renders the edit edicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => edicaos_path(@edicao), :method => "post" do
      assert_select "input#edicao_status", :name => "edicao[status]"
      assert_select "input#edicao_camposEditado", :name => "edicao[camposEditado]"
      assert_select "input#edicao_veterinario", :name => "edicao[veterinario]"
      assert_select "input#edicao_item", :name => "edicao[item]"
    end
  end
end
