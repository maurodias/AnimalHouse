require 'spec_helper'

describe "racas/new" do
  before(:each) do
    assign(:raca, stub_model(Raca,
      :animal => nil,
      :origem => "MyString",
      :nome => "MyString",
      :detalhes => "MyString",
      :item => nil
    ).as_new_record)
  end

  it "renders new raca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => racas_path, :method => "post" do
      assert_select "input#raca_animal", :name => "raca[animal]"
      assert_select "input#raca_origem", :name => "raca[origem]"
      assert_select "input#raca_nome", :name => "raca[nome]"
      assert_select "input#raca_detalhes", :name => "raca[detalhes]"
      assert_select "input#raca_item", :name => "raca[item]"
    end
  end
end
