require 'spec_helper'

describe "patologias/edit" do
  before(:each) do
    @patologia = assign(:patologia, stub_model(Patologia,
      :nome => "MyString",
      :nomePopular => "MyString",
      :detalhes => "MyString",
      :especialidade => nil,
      :item => nil
    ))
  end

  it "renders the edit patologia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patologias_path(@patologia), :method => "post" do
      assert_select "input#patologia_nome", :name => "patologia[nome]"
      assert_select "input#patologia_nomePopular", :name => "patologia[nomePopular]"
      assert_select "input#patologia_detalhes", :name => "patologia[detalhes]"
      assert_select "input#patologia_especialidade", :name => "patologia[especialidade]"
      assert_select "input#patologia_item", :name => "patologia[item]"
    end
  end
end
