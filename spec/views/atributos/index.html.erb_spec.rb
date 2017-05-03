require 'rails_helper'

RSpec.describe "atributos/index", type: :view do
  before(:each) do
    assign(:atributos, [
      Atributo.create!(
        :nombre => "Nombre"
      ),
      Atributo.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of atributos" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
