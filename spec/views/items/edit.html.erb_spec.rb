require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :satus => "MyString",
      :veterinario => nil
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_satus", :name => "item[satus]"
      assert_select "input#item_veterinario", :name => "item[veterinario]"
    end
  end
end
