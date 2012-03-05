require 'spec_helper'

describe "itemlinks/edit" do
  before(:each) do
    @itemlink = assign(:itemlink, stub_model(Itemlink,
      :status => "MyString",
      :veterinario => nil
    ))
  end

  it "renders the edit itemlink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itemlinks_path(@itemlink), :method => "post" do
      assert_select "input#itemlink_status", :name => "itemlink[status]"
      assert_select "input#itemlink_veterinario", :name => "itemlink[veterinario]"
    end
  end
end
