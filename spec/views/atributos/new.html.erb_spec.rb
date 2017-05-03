require 'rails_helper'

RSpec.describe "atributos/new", type: :view do
  before(:each) do
    assign(:atributo, Atributo.new(
      :nombre => "MyString"
    ))
  end

  it "renders new atributo form" do
    render

    assert_select "form[action=?][method=?]", atributos_path, "post" do

      assert_select "input#atributo_nombre[name=?]", "atributo[nombre]"
    end
  end
end
