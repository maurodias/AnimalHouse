require 'spec_helper'

describe "vetxespecialidades/new" do
  before(:each) do
    assign(:vetxespecialidade, stub_model(Vetxespecialidade,
      :itemlink => nil,
      :veterinario => nil,
      :especialidade => nil
    ).as_new_record)
  end

  it "renders new vetxespecialidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vetxespecialidades_path, :method => "post" do
      assert_select "input#vetxespecialidade_itemlink", :name => "vetxespecialidade[itemlink]"
      assert_select "input#vetxespecialidade_veterinario", :name => "vetxespecialidade[veterinario]"
      assert_select "input#vetxespecialidade_especialidade", :name => "vetxespecialidade[especialidade]"
    end
  end
end
