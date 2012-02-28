require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :satus => "MyString",
      :veterinario => nil
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_satus", :name => "item[satus]"
      assert_select "input#item_veterinario", :name => "item[veterinario]"
    end
  end
end
