require 'rails_helper'

RSpec.describe "atributos/edit", type: :view do
  before(:each) do
    @atributo = assign(:atributo, Atributo.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit atributo form" do
    render

    assert_select "form[action=?][method=?]", atributo_path(@atributo), "post" do

      assert_select "input#atributo_nombre[name=?]", "atributo[nombre]"
    end
  end
end
